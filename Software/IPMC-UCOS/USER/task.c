#include "task.h"

__align(8) OS_STK LED_TASK_STK[LED_STK_SIZE];
__align(8) OS_STK DAC_TASK_STK[DAC_STK_SIZE];
__align(8) OS_STK ADC_TASK_STK[ADC_STK_SIZE];
__align(8) OS_STK COM_TASK_STK[COM_STK_SIZE];
__align(8) OS_STK PRINT_TASK_STK[PRINT_STK_SIZE];
__align(8) OS_STK START_TASK_STK[START_STK_SIZE];
__align(8) OS_STK IDLE_TASK_STK[IDLE_STK_SIZE];
__align(8) OS_STK LASER_TASK_STK[LASER_STK_SIZE];
__align(8) OS_STK SHT20_TASK_STK[SHT20_STK_SIZE];

//LED0任务
void led_task(void *pdata)
{
    #define SHORT_DELAY 120
    //0是亮
    INT8U time=1,i=0;
    while(1)
    {
        IWDG_Feed();
        for(i=0;i<time;i++)
        {
            if(BoardID==0x00)
            {	
                LED0=LED_ON;
                if(ReadBit(ErrCode,OverForceBIT)||ReadBit(ErrCode,OverCurrentBIT))
                    LED1=LED_ON;
                else
                    LED1=LED_OFF;
            }
            else
            {	LED1=LED_ON;
                if(ReadBit(ErrCode,OverForceBIT)||ReadBit(ErrCode,OverCurrentBIT))
                    LED0=LED_ON;
                else
                    LED0=LED_OFF;
            }
            delay_ms(SHORT_DELAY);
            if(BoardID==0x00)
            {	
                LED0=LED_OFF;
                if(ReadBit(ErrCode,OverForceBIT)||ReadBit(ErrCode,OverCurrentBIT))
                    LED1=LED_ON;
                else
                    LED1=LED_OFF;
            }
            else
            {	
                LED1=LED_OFF;
                if(ReadBit(ErrCode,OverForceBIT)||ReadBit(ErrCode,OverCurrentBIT))
                    LED0=LED_ON;
                else
                    LED0=LED_OFF;
            }
            delay_ms(SHORT_DELAY);
        }
        time=1;
        if(ReadBit(ErrCode,LASERErrBIT))    time=2; 

        delay_ms(1000-SHORT_DELAY*2*time);
    }
}

void idle_task(void* pdata)
{
	while(1)
	{
        delay_ms(2000);
	}
}

void sht20_task(void* pdata)
{
    OS_CPU_SR cpu_sr=0;
    float T[10],H[10];
    INT8U i=0;
    while(1)
    {
        T[i]=SHT2x_GetTempPoll();
        H[i]=SHT2x_GetHumiPoll();
        OS_ENTER_CRITICAL();
        TEMP=(T[0]+T[1]+T[2]+T[3]+T[4]+T[5]+T[6]+T[7]+T[8]+T[9])/(float)10.0;
        HUMI=(H[0]+H[1]+H[2]+H[3]+H[4]+H[5]+H[6]+H[7]+H[8]+H[9])/(float)10.0;
        OS_EXIT_CRITICAL();
        i++;
        if(i==10) i=0;
        delay_ms(50);
    }
}

void laser_task(void* pdata)
{
    INT8U err,*COM2Buff;
    INT16U time=10;
    OS_CPU_SR cpu_sr=0;
    while(1)
    {
        LaserCMDMessure();
        COM2Buff = OSMboxPend(COM2Msg,time,&err);
        if(err == OS_ERR_NONE)
        {
            OS_ENTER_CRITICAL();
            LaserBAKMessure(COM2Buff);
            OS_EXIT_CRITICAL();
            ClrBit(ErrCode,LASERErrBIT);
            Laser_mm = LaserOffset;
            time = 3;
        }
        else
        {   //通信失败时暂停发送数据等待传感器恢复
            LaserOffset=Laser_OutOfRange;
            time = 5000;
            SetBit(ErrCode,LASERErrBIT);
        }
        delay_ms(time);
    }
}

void com_task(void* pdata)
{
	while(1)
	{
		DealQueueBuff(&UART_RXqueue);
		DealQueueBuff(&CAN_RXqueue);
		TimerCheckKey();
		delay_ms(10);
	}
}

void print_task(void* pdata)
{
    char array[9]={'0','0','.','0','0','0','0'};
    char SendBuff[128]={0};
//    OS_STK_DATA UsedSTK;
    double Current_A=0,Voltage_V=0,Force_N=0;
    double f_Current_A=0,f_Voltage_V=0,f_Force_N=0;
    double lastLaserOffset=0;
	while(1)
	{
        Current_A = (ADS_Buff[0]-RefV[0])*0.00004097277; // 00006744402706230 0.00004097277=0.0001875/457.62100/0.01
        if(fabs(Current_A)<0.0005)
            f_Current_A = RC_LowPassFilter(Current_A,f_Current_A,1);
        else
            f_Current_A = RC_LowPassFilter(Current_A,f_Current_A,2);
//        f_Current_A = IIR_LowPassFilter2P5Hz_Current(Current_A);//
        Current_mA=f_Current_A*1000;//当前电流值
        if(Current_A>0.3||Current_A<-0.3) SetBit(ErrCode,OverCurrentBIT);//过流检测 安培
        else ClrBit(ErrCode,OverCurrentBIT);
        
        Voltage_V = (ADS_Buff[1]-RefV[1])*0.000375;
        f_Voltage_V = RC_LowPassFilter(Voltage_V,f_Voltage_V,5);
        if(Current_mA>=0&&f_Voltage_V>=0)//功率不分正负但是功率有方向
            Power_mW=f_Voltage_V * Current_mA;// V*mA=mW!
        else
            Power_mW=-1*f_Voltage_V * Current_mA;
        
        Energy_mJ+=Power_mW*0.01;//能量积分，mJ
        if(ADS_Buff[1]>24000||ADS_Buff[1]<2666) SetBit(ErrCode,OverValtageBIT); //ADC绝对值高于4.5V和低于0.5V警告
        else ClrBit(ErrCode,OverValtageBIT);
    
        Force_N = 0.94019608*(-0.00022466+0.0000343215*(ADS_Buff[2]-RefV[2])-0.00000000200793*(ADS_Buff[2]-RefV[2])*(ADS_Buff[2]-RefV[2]));//2次曲线*修正系数
        if(fabs(Force_N)<0.001)
            f_Force_N = RC_LowPassFilter(Force_N,f_Force_N,0.5);
        else
            f_Force_N = RC_LowPassFilter(Force_N,f_Force_N,1);
        Force_mN = f_Force_N*1000;
        if(ADS_Buff[2]>24000||ADS_Buff[2]<2666) SetBit(ErrCode,OverForceBIT); //ADC绝对值高于4.5V和低于0.5V警告
        else ClrBit(ErrCode,OverForceBIT);
        
        dLaser_mm=RC_LowPassFilter(LaserOffset-lastLaserOffset,dLaser_mm,1);
        lastLaserOffset=LaserOffset;
        
        if(__HAL_DMA_GET_FLAG(&UART1TxDMA_Handler,DMA_FLAG_TCIF3_7))//判断上次DMA2_Steam7传输完成
        {
            //清除DMA2_Steam7传输完成标志
            __HAL_DMA_CLEAR_FLAG(&UART1TxDMA_Handler,DMA_FLAG_TCIF3_7);
            HAL_UART_DMAStop(&UART1_Handler);      //传输完成以后关闭串口DMA
        }
        
        if(DBG_Flag==false)
        {
            memset(SendBuff,0,sizeof(SendBuff));
    //        printf("C:%sA ",array);
            myftoa(f_Current_A,array);//0.0001875 = 1/32768.0*6.144   //Current_A
            strcat(SendBuff,"C:");strcat(SendBuff,array);strcat(SendBuff,"A ");
            
    //        printf("V:%sV ",array);
            myftoa(f_Voltage_V,array);//0.000375 = 1/32768.0*6.144*2 //Voltage_V
            strcat(SendBuff,"V:");strcat(SendBuff,array);strcat(SendBuff,"V ");     
            
    //        printf("F:%sN ",array);
            myftoa(f_Force_N,array);//0.00004001667=0.000375/2*0.3*0.725925925926*0.98 //Force_N
            strcat(SendBuff,"F:");strcat(SendBuff,array);strcat(SendBuff,"N ");
            
    //        printf("L:%smm ",array);        
            myftoa(LaserOffset,array);//LaserOffset
            strcat(SendBuff,"L:");strcat(SendBuff,array);strcat(SendBuff,"mm ");
            
    //        printf("T0:%sS ",array);            
            myftoa(WaveCLK0,array);
            strcat(SendBuff,"T0:");strcat(SendBuff,array);strcat(SendBuff,"S ");
            
    //        printf("T1:%sS ",array);            
            myftoa(WaveCLK1,array);
            strcat(SendBuff,"T1:");strcat(SendBuff,array);strcat(SendBuff,"S ");
            
    //        printf("TP:%sC ",array);
            myftoa(TEMP,array);
            strcat(SendBuff,"TP:");strcat(SendBuff,array);strcat(SendBuff,"C ");

    //        printf("RH:%s%% ",array);
            myftoa(HUMI,array);
            strcat(SendBuff,"RH:");strcat(SendBuff,array);strcat(SendBuff,"% ");
            
    //        printf("|");printf("CPU:%02d%% ",OSCPUUsage);printf("|");
            strcat(SendBuff,"|CPU:");
            memset(array,0,sizeof(array));
            array[0]='0'+OSCPUUsage/10;array[1]='0'+OSCPUUsage%10;array[2]='%';array[3]=' ';array[4]='|';array[5]='\r';array[6]='\n';
            strcat(SendBuff,array);
                
            MYDMA_USART_Transmit(&UART1_Handler,(u8*)SendBuff,113); //启动传输   
        }        
        else
        {
            printf("AD[0-2]:%d %d %d ",ADS_Buff[0],ADS_Buff[1],ADS_Buff[2]);
            printf("diffAD[2]_Force:%d ",ADS_Buff[2]-RefV[2]);
            printf("ErrCode:0x%x (15:C 14:V 13:F 0:L) ",ErrCode);
            printf("CPU:%02d%% ",OSCPUUsage);
            printf("ST:%.2f ",algPID.SetPoint);
            printf("CRT:%.2f ",algPID.CurrntPoint );
            printf("OBJ:%d ",algPID.ObjType );
            printf("WAY:%d ",CtrlType );
            printf("Err:%.2f ",algPID.Err);
            printf("SumErr:%.2f ",algPID.SumErr);
            printf("dErr:%.2f ",algPID.dErr);
            printf("out:%.2f ",algPID.output);
            printf("energy:%.1f ",setEnergy);
            printf("predlaser:%.1fmm ",0.38632*Energy_mJ+0.00392);
//            OSTaskStkChk(DAC_TASK_PRIO,&UsedSTK);printf("DAC:%.1f%% ",(float)UsedSTK.OSUsed/DAC_STK_SIZE*100);
//            OSTaskStkChk(ADC_TASK_PRIO,&UsedSTK);printf("ADC:%.1f%% ",(float)UsedSTK.OSUsed/ADC_STK_SIZE*100);
//            OSTaskStkChk(COM_TASK_PRIO,&UsedSTK);printf("COM:%.1f%% ",(float)UsedSTK.OSUsed/COM_STK_SIZE*100);
//            OSTaskStkChk(LASER_TASK_PRIO,&UsedSTK);printf("LASER:%.1f%% ",(float)UsedSTK.OSUsed/LASER_STK_SIZE*100);
//            OSTaskStkChk(LED_TASK_PRIO,&UsedSTK);printf("LED:%.1f%% ",(float)UsedSTK.OSUsed/LED_STK_SIZE*100);
//            OSTaskStkChk(DBG_TASK_PRIO,&UsedSTK);printf("DBG:%.1f%% ",(float)UsedSTK.OSUsed/DBG_STK_SIZE*100);
            printf("\r\n");
        }
		delay_ms(10);
	}
}

//能量和位移关系图。laser=0.16526+0.00502*energy-1.28083E-6*energy^2+4.68189E-10*energy^3
void dac_task(void* pdata)
{
	while(1)
	{
        if(CTR_Flag==false)
            WaveFunc();
        else if(CARLIB_OK_Flag==true)
        {   

            if(Energy_mJ>=setEnergy)
            {
                switch(CtrlType)
                {
                    case TYPE_PID:PIDController(&algPID);break;
                    case TYPE_BANG:BangBangController(&algBang);break;
                    case TYPE_SERIAL_PID:break;
                    case TYPE_UNKNOWN:break;
                    default:break;
                }
            }
            else
            {
//                algPID_1.ObjType=POWER;
//                algPID_1.SetPoint=50;
//                algPID_1.KP=algPID.KP;
//                algPID_1.KI=algPID.KI;
//                algPID_1.KD=algPID.KD;
                if(algPID.ObjType==POWER)
                {
                    algPID_1=algPID;
                    algPID_1.SetPoint=200;
                    PIDController(&algPID_1);
                    algPID.dErr=algPID_1.dErr;
                    algPID.SumErr=algPID_1.SumErr;
                    algPID.LastErr1=algPID_1.LastErr1;
                    algPID.LastErr2=algPID_1.LastErr2;
                    algPID.Err=algPID_1.Err;
                }
                else
                    AD5722_Output(3.5,CH0);
            }            
        }
        
        if(CTR_Flag==false)
            delay_ms(1);
        else
        {
            delay_ms(10);
        }
	}
}

void adc_task(void* pdata)
{
	uint8_t state=0;
	while(1)
	{
		switch(state)
		{
		case 0:
		  ADS_Buff[0]=ADS1x15_ReadLastValue();
		  ADS1x15_SelectChannel(ADS_CH1);
		  break;
		case 1:
		  ADS_Buff[1]=ADS1x15_ReadLastValue();
		  ADS1x15_SelectChannel(ADS_CH2);
		  break;
		case 2:
		  ADS_Buff[2]=ADS1x15_ReadLastValue();
		  ADS1x15_SelectChannel(ADS_CH0);
		  break;
		default:break;
		}
		state++;
		if(state==3)state=0;
		delay_ms(3);
	}
}

//开始任务
void start_task(void *pdata)
{
	OS_CPU_SR cpu_sr=0;
	pdata=pdata;
	OSStatInit();  //开启统计任务
	
	OS_ENTER_CRITICAL();  //进入临界区(关闭中断)
	
    cpu_sr=OSTaskCreateExt((void(*)(void*) )led_task,                 
                           (void*          )0,
                           (OS_STK*        )&LED_TASK_STK[LED_STK_SIZE-1],
                           (INT8U          )LED_TASK_PRIO,            
                           (INT16U         )LED_TASK_PRIO,            
                           (OS_STK*        )&LED_TASK_STK[0],         
                           (INT32U         )LED_STK_SIZE,             
                           (void*          )0,                         
                           (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )print_task,                 
                           (void*          )0,
                           (OS_STK*        )&PRINT_TASK_STK[PRINT_STK_SIZE-1],
                           (INT8U          )PRINT_TASK_PRIO,            
                           (INT16U         )PRINT_TASK_PRIO,            
                           (OS_STK*        )&PRINT_TASK_STK[0],         
                           (INT32U         )PRINT_STK_SIZE,             
                           (void*          )0,                         
                           (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

    cpu_sr=OSTaskCreateExt((void(*)(void*) )dac_task,                 
                            (void*          )0,
                            (OS_STK*        )&DAC_TASK_STK[DAC_STK_SIZE-1],
                            (INT8U          )DAC_TASK_PRIO,            
                            (INT16U         )DAC_TASK_PRIO,            
                            (OS_STK*        )&DAC_TASK_STK[0],         
                            (INT32U         )DAC_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )adc_task,                 
                            (void*          )0,
                            (OS_STK*        )&ADC_TASK_STK[ADC_STK_SIZE-1],
                            (INT8U          )ADC_TASK_PRIO,            
                            (INT16U         )ADC_TASK_PRIO,            
                            (OS_STK*        )&ADC_TASK_STK[0],         
                            (INT32U         )ADC_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )com_task,                 
                            (void*          )0,
                            (OS_STK*        )&COM_TASK_STK[COM_STK_SIZE-1],
                            (INT8U          )COM_TASK_PRIO,            
                            (INT16U         )COM_TASK_PRIO,            
                            (OS_STK*        )&COM_TASK_STK[0],         
                            (INT32U         )COM_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )idle_task,                 
                            (void*          )0,
                            (OS_STK*        )&IDLE_TASK_STK[IDLE_STK_SIZE-1],
                            (INT8U          )IDLE_TASK_PRIO,            
                            (INT16U         )IDLE_TASK_PRIO,            
                            (OS_STK*        )&IDLE_TASK_STK[0],         
                            (INT32U         )IDLE_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);
    
    cpu_sr=OSTaskCreateExt((void(*)(void*) )laser_task,                 
                            (void*          )0,
                            (OS_STK*        )&LASER_TASK_STK[LASER_STK_SIZE-1],
                            (INT8U          )LASER_TASK_PRIO,            
                            (INT16U         )LASER_TASK_PRIO,            
                            (OS_STK*        )&LASER_TASK_STK[0],         
                            (INT32U         )LASER_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

    cpu_sr=OSTaskCreateExt((void(*)(void*) )sht20_task,                 
                            (void*          )0,
                            (OS_STK*        )&SHT20_TASK_STK[SHT20_STK_SIZE-1],
                            (INT8U          )SHT20_TASK_PRIO,            
                            (INT16U         )SHT20_TASK_PRIO,            
                            (OS_STK*        )&SHT20_TASK_STK[0],         
                            (INT32U         )SHT20_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

    
                            
    OS_EXIT_CRITICAL();//退出临界区(开中断)

    delay_ms(150);//让任务都执行一次以获取相关数据
    Carlib();              
                            
    OSTaskDel(START_TASK_PRIO); //删除开始任务
}

