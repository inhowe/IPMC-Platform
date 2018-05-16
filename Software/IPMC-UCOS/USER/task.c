#include "task.h"


OS_STK LED_TASK_STK[LED_STK_SIZE];
OS_STK DAC_TASK_STK[DAC_STK_SIZE];
OS_STK ADC_TASK_STK[ADC_STK_SIZE];
OS_STK COM_TASK_STK[COM_STK_SIZE];
OS_STK DBG_TASK_STK[DBG_STK_SIZE];
OS_STK START_TASK_STK[START_STK_SIZE];
OS_STK IDLE_TASK_STK[IDLE_STK_SIZE];
OS_STK LASER_TASK_STK[LASER_STK_SIZE];

//LED0任务
void led_task(void *pdata)
{
    INT16U time=950;
    while(1)
    {
        if(BoardID==0x00)
        {	LED0=0;LED1=1;}
        else
        {	LED1=0;LED0=1;}
        delay_ms(50);
        if(BoardID==0x00)
        {	LED0=1;LED1=1;}
        else
        {	LED1=1;LED0=1;}
        
        if(ErrCode!=0)time=150; else time=950;
        delay_ms(time);
    }
}

void IDLE_Task(void* pdata)
{
	while(1)
	{
        delay_ms(1000);
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
        {   //通信失败时等待传感器恢复
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
	while(1)
	{
        printf("C:%.3fV ",ADS_Buff[0]/32768.0*6.144);
        printf("V:%.3fV ",ADS_Buff[1]/32768.0*6.144);
        printf("F:%.3fV ",ADS_Buff[2]/32768.0*6.144);
        printf("L:%.4fmm ",LaserOffset);
        printf("\r\n");
		delay_ms(1000);
	}
}

void DAC_Task(void* pdata)
{
	while(1)
	{
		WaveFunc();
		delay_ms(5);
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
		  ADS1x15_SelectChannel(ADS_CH3);
		  break;
		case 3:
		  ADS_Buff[3]=ADS1x15_ReadLastValue();
		  ADS1x15_SelectChannel(ADS_CH0);
		  break;
		default:break;
		}
		state++;
		if(state==4)state=0;
		
		delay_ms(5);
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
    
    cpu_sr=OSTaskCreateExt((void(*)(void*) )Laser_Task,                 
                           (void*          )0,
                           (OS_STK*        )&LASER_TASK_STK[LASER_STK_SIZE-1],
                           (INT8U          )LASER_TASK_PRIO,            
                           (INT16U         )LASER_TASK_PRIO,            
                           (OS_STK*        )&LASER_TASK_STK[0],         
                           (INT32U         )LASER_STK_SIZE,             
                           (void*          )0,                         
                           (INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);

    OS_EXIT_CRITICAL();             //退出临界区(开中断)
	OSTaskSuspend(START_TASK_PRIO); //挂起开始任务
}

