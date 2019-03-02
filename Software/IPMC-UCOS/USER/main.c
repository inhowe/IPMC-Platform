#include "sys.h"
#include "includes.h"
/************************************************
 ALIENTEK 阿波罗STM32F429开发板实验59
 UCOSII实验1-任务调度-HAL库函数版
 技术支持：www.openedv.com
 淘宝店铺：http://eboard.taobao.com  
 关注微信公众平台微信号："正点原子"，免费获取STM32资料。
 广州市星翼电子科技有限公司  
 作者：正点原子 @ALIENTEK
************************************************/
static void MX_NVIC_Init(void);
static void BSP_Init(void);

OS_EVENT * CAN_Q;
OS_EVENT * UART1_Q;
OS_EVENT * COM2Msg;
void*   CAN_QTbl[64];
void* UART1_QTbl[64];

float TEMP=0,HUMI=0;
/*
ErrCode Bit Description
Reference @ErrCodeBitDefine
*/
INT16U ErrCode=0;
INT16U BoardID=0x00;
bool DBG_Flag=false;
bool CTR_Flag=false;
bool CARLIB_OK_Flag=false;
int main(void)
{
	HAL_Init();                     //初始化HAL库   
	Stm32_Clock_Init(336,25,2,8);   //设置时钟,180Mhz
	delay_init(168);                //初始化延时函数
	BSP_Init();
	
	OSInit();                       //UCOS初始化
	
    if(HAL_GPIO_ReadPin(KEY_GPIO_Port,KEY_Pin)==GPIO_PIN_RESET )//启用DEBUG模式，输出原始数据。
        DBG_Flag=true;
    
	UART1_Q=OSQCreate(&UART1_QTbl[0],64);
	CAN_Q  =OSQCreate(&CAN_QTbl[0],64);
	COM2Msg =OSMboxCreate((void *)0);

	OSTaskCreateExt((void(*)(void*) )start_task,                //任务函数
									(void*          )0,                         //传递给任务函数的参数
									(OS_STK*        )&START_TASK_STK[START_STK_SIZE-1],//任务堆栈栈顶
									(INT8U          )START_TASK_PRIO,           //任务优先级
									(INT16U         )START_TASK_PRIO,           //任务ID，这里设置为和优先级一样
									(OS_STK*        )&START_TASK_STK[0],        //任务堆栈栈底
									(INT32U         )START_STK_SIZE,            //任务堆栈大小
									(void*          )0,                         //用户补充的存储区
									(INT16U         )OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR|OS_TASK_OPT_SAVE_FP);//任务选项,为了保险起见，所有任务都保存浮点寄存器的值
	OSStart(); //开始任务
}

static void BSP_Init(void)
{
	MX_NVIC_Init();
	
    uart1_init(460800);//USART
    uart2_init(115200);//RS232
    #ifdef ROBOT_ARM
        IPMC_Init();
    #else
        uart3_init(115200);//RS485
    #endif
    if(DBG_Flag==false)
        MYDMA_Config(DMA2_Stream7,DMA_CHANNEL_4);//初始化DMA
    LED_Init();                     //初始化LED
    KeyInit();
    IIC_Init();
    CAN1_Mode_Init(CAN_SJW_1TQ,CAN_BS2_6TQ,CAN_BS1_8TQ,6,CAN_MODE_NORMAL); //CAN初始化,波特率500Kbps      
    AD5722_Init();
    Channel_Group_Init();	
    SHT2x_Init();
    LaserCMDToZero();
    Queue_Init(&UART_RXqueue);
    Queue_Init(&CAN_RXqueue);
}

static void MX_NVIC_Init(void)
{
  /* TIM6_DAC_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(TIM6_DAC_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(TIM6_DAC_IRQn);
  /* USART1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(USART1_IRQn, 1, 0);
  HAL_NVIC_EnableIRQ(USART1_IRQn);
  /* USART2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(USART2_IRQn, 2, 0);
  HAL_NVIC_EnableIRQ(USART2_IRQn);
  /* CAN1_RX0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(CAN1_RX0_IRQn, 3, 0);
  HAL_NVIC_EnableIRQ(CAN1_RX0_IRQn);
}

