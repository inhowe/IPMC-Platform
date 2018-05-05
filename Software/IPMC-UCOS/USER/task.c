#include "task.h"


OS_STK LED_TASK_STK[LED_STK_SIZE];
OS_STK DAC_TASK_STK[DAC_STK_SIZE];
OS_STK ADC_TASK_STK[ADC_STK_SIZE];
OS_STK COM_TASK_STK[COM_STK_SIZE];
OS_STK DBG_TASK_STK[DBG_STK_SIZE];
OS_STK START_TASK_STK[START_STK_SIZE];

//LED0任务
void led_task(void *pdata)
{	 	
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
		delay_ms(950);
	};
}

void COM_Task(void* pdata)
{
//	INT8U *msg,err;
//	char one=1;
//	char two=2;    

//	OSQPost(UART1_Q,(void*)&one);
//	OSQPost(UART1_Q,(void*)&two); 
//	while (1)
//	{
//		msg=(INT8U *)OSQPend(UART1_Q,0,&err);
//		printf("%d\r\n",*msg);	
//	}
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
        printf("C:%4.3fV ",ADS_Buff[0]/32768.0*6.144);
        printf("V:%4.3fV ",ADS_Buff[1]/32768.0*6.144);
        printf("F:%4.3fV ",ADS_Buff[2]/32768.0*6.144);
        printf("G:%4.3fV ",ADS_Buff[3]/32768.0*6.144);
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

    OS_EXIT_CRITICAL();             //退出临界区(开中断)
	OSTaskSuspend(START_TASK_PRIO); //挂起开始任务
}

