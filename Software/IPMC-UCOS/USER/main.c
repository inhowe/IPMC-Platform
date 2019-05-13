#include "sys.h"
#include "includes.h"
/************************************************
 *作者：@inhowe 
************************************************/
static void MX_NVIC_Init(void);
static void BSP_Init(void);

#define VERSION     0x10//固件版本

//用户配置变量的FLASH地址
#define USR_CONFIG_ADDR     ((uint32_t)0x08080000)

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

double Current_mA=0,Power_mW=0,Laser_mm=0,Force_mN=0,Energy_mJ=0,dLaser_mm=0;

//DEBUG时应关闭IWDG，可在Peripheral-DBG寄存器里勾选DBG_IWDEG_STOP
int main(void)
{
	HAL_Init();                     //初始化HAL库   
	Stm32_Clock_Init(336,25,2,8);   //设置时钟,168Mhz
	delay_init(168);                //初始化延时函数
	BSP_Init();
	
	OSInit();                       //UCOS初始化
    
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
    uint16_t cnt=0;
    
	MX_NVIC_Init();
	
    uart1_init(460800);//USART
    uart2_init(115200);//RS232
    LED_Init();                     //初始化LED
    KeyInit();

    #ifdef ROBOT_ARM
        IPMC_Init();
    #else
        uart3_init(115200);//RS485
    #endif
    if(DBG_Flag==false)
        MYDMA_Config(DMA2_Stream7,DMA_CHANNEL_4);//初始化DMA

    IIC_Init();
    CAN1_Mode_Init(CAN_SJW_1TQ,CAN_BS2_6TQ,CAN_BS1_8TQ,6,CAN_MODE_NORMAL); //CAN初始化,波特率500Kbps      
    AD5722_Init();
    Channel_Group_Init();	
    SHT2x_Init();
    LaserCMDToZero();
    Queue_Init(&UART_RXqueue);
    Queue_Init(&CAN_RXqueue);
    
    cnt=0;
    while(HAL_GPIO_ReadPin(KEY_GPIO_Port,KEY_Pin)==GPIO_PIN_RESET )//按键启动
    {
        delay_ms(100);
        LED0=LED1=LED_ON;
        delay_ms(100);
        LED0=LED1=LED_OFF;
        cnt++;
        if(cnt>=25)break;
    }
    if(cnt>=25)
    {
        UpgradeSystem();
    }
    else if(cnt>=1)//short press
    {
        DBG_Flag=true;
//        IWDG_Init();
    }
    else
    {
        IWDG_Init();
    }
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

void JumpToISP(void)
{
    //ISP代码地址
    #define ISPAddress 0x1FFF0000 
    
    //程序跳转不复位外设，建议对一些可能导致问题的外设进行反初始化DeInit，如SysTick。
    //看门狗一旦初始化不能被关闭，因此如果使用了看门狗，则在调用该函数前，必须先复位系统，并在初始化看门狗之前调用该函数。
    uint32_t ispJumpAddr;//ISP程序的跳转地址，既程序入口
    uint32_t ispSpValue;//IAP程序的SP初值，即栈指针
    void (*Jump_To_ISP)(void);//定义一个函数指针
    
    SysTick->CTRL=0x00;       //关闭计数器
    SysTick->VAL =0X00;       //清空计数器	
    //__set_PRIMASK(1);

    if (((*(__IO uint32_t*)ISPAddress) & 0x2FFE0000 ) == 0x20000000)
    { 
        ispSpValue  = *(__IO uint32_t*)ISPAddress;
        ispJumpAddr = *(__IO uint32_t*)(ISPAddress+4);


        /* 初始化 Stack Pointer */
        __set_MSP(ispSpValue);

        /* Jump to isp */
        Jump_To_ISP = (void (*)(void))ispJumpAddr;
        Jump_To_ISP();
    }
}

void UpgradeSystem(void)
{
    LED0=LED1=LED_ON;
    printf("\r\nPlease release your COM port, and call the stm32isp.exe.");
    printf("\r\nEntering booloader...");
    JumpToISP();
}
