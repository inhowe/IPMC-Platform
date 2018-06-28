#include "task.h"

OS_STK LED_TASK_STK[LED_STK_SIZE];
OS_STK DAC_TASK_STK[DAC_STK_SIZE];
OS_STK ADC_TASK_STK[ADC_STK_SIZE];
OS_STK COM_TASK_STK[COM_STK_SIZE];
OS_STK DBG_TASK_STK[DBG_STK_SIZE];
OS_STK START_TASK_STK[START_STK_SIZE];
OS_STK IDLE_TASK_STK[IDLE_STK_SIZE];
OS_STK LASER_TASK_STK[LASER_STK_SIZE];
OS_STK SHT20_TASK_STK[SHT20_STK_SIZE];

//LED0任务
void led_task(void *pdata)
{
    INT8U time=1,i=0;
    while(1)
    {
        for(i=0;i<time;i++)
        {
            if(BoardID==0x00)
            {	LED0=0;LED1=1;}
            else
            {	LED1=0;LED0=1;}
            delay_ms(75);
            if(BoardID==0x00)
            {	LED0=1;LED1=1;}
            else
            {	LED1=1;LED0=1;}
            delay_ms(75);
        }
        time=1;
        if(ReadBit(ErrCode,LASERErrBIT))    time=2; 
        if(ReadBit(ErrCode,OverCurrentBIT)) time=8; 
        delay_ms(1500-75*2*time);
    }
}

void IDLE_Task(void* pdata)
{
	while(1)
	{
//        CGroup.DA0.type=DC;
//        //catch 1
//        CGroup.DA0.DC=4;
//        delay_ms(2000);
//        CGroup.DA0.DC=-4;
//        delay_ms(2000);
//        
//        //catch 2
//        CGroup.DA0.DC=4;
//        delay_ms(2000);
//        CGroup.DA0.DC=-4;
//        delay_ms(2000);
//        
//        //catch 3
//        CGroup.DA0.DC=4;
//        delay_ms(2000);
//        CGroup.DA0.DC=-4;
//        delay_ms(2000);
//        
//        //catch 4
//        CGroup.DA0.DC=4;
//        delay_ms(2000);
//        CGroup.DA0.DC=-4;
//        delay_ms(2000);
        delay_ms(1000);
	}
}

void SHT20_Task(void* pdata)
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

void Laser_Task(void* pdata)
{
    INT8U err,*COM2Buff;
    INT16U time=20;
    while(1)
    {
        LaserCMDMessure();
        COM2Buff = OSMboxPend(COM2Msg,time,&err);
        if(err == OS_ERR_NONE)
        {
            LaserBAKMessure(COM2Buff);
            ClrBit(ErrCode,LASERErrBIT);
            time = 20;
        }
        else
        {   //通信失败时暂停发送数据等待传感器恢复
            LaserOffset=-99.9999;
            time = 5000;
            SetBit(ErrCode,LASERErrBIT);
        }
        delay_ms(time);
    }
}

void COM_Task(void* pdata)
{
	while(1)
	{
		DealQueueBuff(&UART_RXqueue);
		DealQueueBuff(&CAN_RXqueue);
		TimerCheckKey();
		delay_ms(10);
	}
}

void DBG_Task(void* pdata)
{
    char array[9];
    double tmp=0;
	while(1)
	{   
        tmp = (ADS_Buff[0]-RefV[0])*0.0001875/457.62100/0.01; // /215.59227/0.01
        myftoa(tmp,array);//0.0001875 = 1/32768.0*6.144
        printf("C:%sA ",array);
        if(tmp>1.0||tmp<-1.0) SetBit(ErrCode,OverCurrentBIT);
        else ClrBit(ErrCode,OverCurrentBIT);
        myftoa((ADS_Buff[1]-RefV[1])*0.000375,array);//0.00375 = 1/32768.0*6.144*2
        printf("V:%sV ",array);
        myftoa((ADS_Buff[2]-RefV[2])*0.0001875*0.3*0.725925925926*0.98,array);//468R //0.0001875 = 1/32768.0*6.144
        printf("F:%sN ",array);
        myftoa(LaserOffset,array);
        printf("L:%smm ",array);
        myftoa(WaveCLK0,array);
        printf("T0:%sS ",array);
        myftoa(WaveCLK1,array);
        printf("T1:%sS ",array);
        myftoa(TEMP,array);
        printf("TP:%sC ",array);
        myftoa(HUMI,array);
        printf("RH:%s%% ",array);
//        printf("C:%.4fA ",(ADS_Buff[0]-RefV[0])/32768.0*6.144/251.7614/0.01); //VM=(VO-2.5)/248/0.01 , I=VM/R
//        printf("V:%.4fV ",(ADS_Buff[1]-RefV[1])/32768.0*6.144*2);
//        printf("F:%.4fV ",(ADS_Buff[2]-RefV[2])/32768.0*6.144);
//        printf("L:%.4fmm ",LaserOffset);
        
        printf("|");
        printf("CPU:%02d%% ",OSCPUUsage);
        printf("|");
//        OSTaskStkChk(DAC_TASK_PRIO,&UsedSTK);
//        printf("DAC:%.1f%% ",(float)UsedSTK.OSUsed/DAC_STK_SIZE);
//        OSTaskStkChk(ADC_TASK_PRIO,&UsedSTK);
//        printf("ADC:%.1f%% ",(float)UsedSTK.OSUsed/ADC_STK_SIZE);
//        OSTaskStkChk(COM_TASK_PRIO,&UsedSTK);
//        printf("COM:%.1f%% ",(float)UsedSTK.OSUsed/COM_STK_SIZE);
//        OSTaskStkChk(LASER_TASK_PRIO,&UsedSTK);
//        printf("LASER:%.1f%% ",(float)UsedSTK.OSUsed/LASER_STK_SIZE);
//        OSTaskStkChk(LED_TASK_PRIO,&UsedSTK);
//        printf("LED:%.1f%% ",(float)UsedSTK.OSUsed/LED_STK_SIZE);

//        printf("%.4f \r\n",(ADS_Buff[0]-RefV[0])/32768.0*6.144*(49400/200+1));
        printf("\r\n");
        
		delay_ms(20);
	}
}

void DAC_Task(void* pdata)
{
	while(1)
	{
		WaveFunc();
		delay_ms(1);
	}
}

void ADC_Task(void* pdata)
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
//		case 3:
//		  ADS_Buff[3]=ADS1x15_ReadLastValue();
//		  ADS1x15_SelectChannel(ADS_CH0);
//		  break;
		default:break;
		}
		state++;
//		if(state==4)state=0;
		if(state==3)state=0;
		delay_ms(20);
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

	cpu_sr=OSTaskCreateExt((void(*)(void*) )DBG_Task,                 
                           (void*          )0,
                           (OS_STK*        )&DBG_TASK_STK[DBG_STK_SIZE-1],
                           (INT8U          )DBG_TASK_PRIO,            
                           (INT16U         )DBG_TASK_PRIO,            
                           (OS_STK*        )&DBG_TASK_STK[0],         
                           (INT32U         )DBG_STK_SIZE,             
                           (void*          )0,                         
                           (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )DAC_Task,                 
                           (void*          )0,
                           (OS_STK*        )&DAC_TASK_STK[DAC_STK_SIZE-1],
                           (INT8U          )DAC_TASK_PRIO,            
                           (INT16U         )DAC_TASK_PRIO,            
                           (OS_STK*        )&DAC_TASK_STK[0],         
                           (INT32U         )DAC_STK_SIZE,             
                           (void*          )0,                         
                           (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )ADC_Task,                 
                            (void*          )0,
                            (OS_STK*        )&ADC_TASK_STK[ADC_STK_SIZE-1],
                            (INT8U          )ADC_TASK_PRIO,            
                            (INT16U         )ADC_TASK_PRIO,            
                            (OS_STK*        )&ADC_TASK_STK[0],         
                            (INT32U         )ADC_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )COM_Task,                 
                            (void*          )0,
                            (OS_STK*        )&COM_TASK_STK[COM_STK_SIZE-1],
                            (INT8U          )COM_TASK_PRIO,            
                            (INT16U         )COM_TASK_PRIO,            
                            (OS_STK*        )&COM_TASK_STK[0],         
                            (INT32U         )COM_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

	cpu_sr=OSTaskCreateExt((void(*)(void*) )IDLE_Task,                 
                            (void*          )0,
                            (OS_STK*        )&IDLE_TASK_STK[IDLE_STK_SIZE-1],
                            (INT8U          )IDLE_TASK_PRIO,            
                            (INT16U         )IDLE_TASK_PRIO,            
                            (OS_STK*        )&IDLE_TASK_STK[0],         
                            (INT32U         )IDLE_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);
    
    cpu_sr=OSTaskCreateExt( (void(*)(void*) )Laser_Task,                 
                            (void*          )0,
                            (OS_STK*        )&LASER_TASK_STK[LASER_STK_SIZE-1],
                            (INT8U          )LASER_TASK_PRIO,            
                            (INT16U         )LASER_TASK_PRIO,            
                            (OS_STK*        )&LASER_TASK_STK[0],         
                            (INT32U         )LASER_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

    cpu_sr=OSTaskCreateExt( (void(*)(void*) )SHT20_Task,                 
                            (void*          )0,
                            (OS_STK*        )&SHT20_TASK_STK[SHT20_STK_SIZE-1],
                            (INT8U          )SHT20_TASK_PRIO,            
                            (INT16U         )SHT20_TASK_PRIO,            
                            (OS_STK*        )&SHT20_TASK_STK[0],         
                            (INT32U         )SHT20_STK_SIZE,             
                            (void*          )0,                         
                            (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

    
    OS_EXIT_CRITICAL();             //退出临界区(开中断)
    
    Carlib();
    
    OSTaskDel(START_TASK_PRIO); //挂起开始任务
}

