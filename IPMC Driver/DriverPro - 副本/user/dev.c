/*******************************************************************************
* File Name          : ringq.c
* Author             : Appcat
* Version            : V0.0.1
* Date               : 07/11/2009
* Description        : This file provides a set of functions needed to manage the
*                      communication between I2C peripheral and I2C FM24CL16 FRAM.
*******************************************************************************/
	
/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h"
#include "dev.h"
#include "stdio.h"
/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/

//#define FRAM_ADDRESS	0xA1
//SCL-PA8;SDA-PC9

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
uint32_t Device_ID = 0x102;//max 0x03ff
uint32_t Filter_ID1	= 0x101;

CanRxMsg *RxMessage;
/* Private function prototypes -----------------------------------------------*/


/*******************************************************************************
* Function Name  : 
* Description    : 
* Input          : 
* Output         : None
* Return         : None
*******************************************************************************/
/*
void GPIO_Config(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	//Deinit all teh GPIO
	GPIO_DeInit(GPIOA);
  GPIO_DeInit(GPIOB);
  GPIO_DeInit(GPIOC);
	//Enable the gpio clock
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);
	
	//SCL-PA8
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_OD;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	//SDA-PC9
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_Init(GPIOC, &GPIO_InitStructure);	
	I2C_Stop();
	
	#if 1
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_13|GPIO_Pin_14;
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_UP;
	GPIO_Init(GPIOC, &GPIO_InitStructure);
	#endif
}
*/
/**
  * @brief  USART1_Config for test
  * @param  uint32_t baudRate
  * @retval none
  */

void USART1_Config(uint32_t baudRate)
{//for test
	USART_InitTypeDef USART_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;
	
	//Enable the gpio clock
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1,ENABLE);
	// Connect USART pins to AF7; USART1_Tx-GPIOA_Pin9,USART1_Rx-GPIOA_Pin10
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource9, GPIO_AF_USART1);
	GPIO_PinAFConfig(GPIOA, GPIO_PinSource10, GPIO_AF_USART1);
	
	// Configure USART Tx and Rx as alternate function push-pull
	//Tx
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	//Rx
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	// USARTx configuration 
	USART_InitStructure.USART_BaudRate = baudRate;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(USART1, &USART_InitStructure);
	
	/* Enable the Rx buffer empty interrupt */
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);	
}
/**
  * @brief  USART1_Config for bluebooth
  * @param  uint32_t baudRate
  * @retval none
  */

void USART3_Config(uint32_t baudRate)
{//for bluebeeth
	USART_InitTypeDef USART_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;
	
	//Enable the gpio clock
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3,ENABLE);
	// Connect USART pins to AF7; USART1_Tx-PB10,USART1_Rx-PB11
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource10, GPIO_AF_USART3);
	GPIO_PinAFConfig(GPIOB, GPIO_PinSource11, GPIO_AF_USART3);
	
	// Configure USART Tx and Rx as alternate function push-pull
	//Tx
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	//Rx
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	
	// USARTx configuration 
	USART_InitStructure.USART_BaudRate = baudRate;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(USART3, &USART_InitStructure);

	/* Enable USART */
	USART_Cmd(USART3, ENABLE);
}
/**
  * @brief  SPI2_Config FOR ms5611
  * @param  none
  * @retval none
  */

void SPI2_Config(void)
{
	
	GPIO_InitTypeDef GPIO_InitStructure;
  SPI_InitTypeDef  SPI_InitStructure;

  /* Peripheral Clock Enable -------------------------------------------------*/
	  /* Enable GPIO clocks */
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB,ENABLE);
  /* Enable the SPI clock */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2,ENABLE); 

  /* Connect SPI pins to AF5 */  
  GPIO_PinAFConfig(GPIOB,GPIO_PinSource13, GPIO_AF_SPI2);
  GPIO_PinAFConfig(GPIOB,GPIO_PinSource14, GPIO_AF_SPI2);  
  GPIO_PinAFConfig(GPIOB,GPIO_PinSource15, GPIO_AF_SPI2);

  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_UP;//

  /* SPI SCK pin configuration */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13;
  GPIO_Init(GPIOB, &GPIO_InitStructure);
  
  /* SPI  MISO pin configuration */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_14;
  GPIO_Init(GPIOB, &GPIO_InitStructure);  

  /* SPI  MOSI pin configuration */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_15;
  GPIO_Init(GPIOB, &GPIO_InitStructure);
 
  /* SPI configuration -------------------------------------------------------*/
  SPI_I2S_DeInit(SPI2);
  SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
  SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
  SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;
  SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;
  SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_256;//bandRate = fclk/prescaler
  SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
  SPI_InitStructure.SPI_CRCPolynomial = 7;
	
	SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
  SPI_Init(SPI2, &SPI_InitStructure);
	
	SPI_Cmd(SPI2, ENABLE);
}
/**
  * @brief  SPI1_Config FOR SAR150
  * @param  none
  * @retval none
  */

void SPI1_Config(void)
{	
	GPIO_InitTypeDef GPIO_InitStructure;
  SPI_InitTypeDef  SPI_InitStructure;

  /* Peripheral Clock Enable -------------------------------------------------*/
	  /* Enable GPIO clocks */
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA,ENABLE);
  /* Enable the SPI clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1,ENABLE); 

  /* Connect SPI pins to AF5 */  
// GPIO_PinAFConfig(GPIOA,GPIO_PinSource4, GPIO_AF_SPI1);//NSS
  GPIO_PinAFConfig(GPIOA,GPIO_PinSource5, GPIO_AF_SPI1);//SCK 
  GPIO_PinAFConfig(GPIOA,GPIO_PinSource6, GPIO_AF_SPI1);//MISO
	GPIO_PinAFConfig(GPIOA,GPIO_PinSource7, GPIO_AF_SPI1);//MOSI

  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_DOWN;

	/* SPI  NSS pin configuration */
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_4;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
	
  /* SPI SCK pin configuration */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
  
  /* SPI  MISO pin configuration */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_6;
  GPIO_Init(GPIOA, &GPIO_InitStructure);  

  /* SPI  MOSI pin configuration */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_7;
  GPIO_Init(GPIOA, &GPIO_InitStructure);


  /* SPI configuration -------------------------------------------------------*/
  SPI_I2S_DeInit(SPI1);
  SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
  SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
  SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;
  SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;
  SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_256;//bandRate = fclk/prescaler
  SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
  SPI_InitStructure.SPI_CRCPolynomial = 7;
	
	SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
  SPI_Init(SPI1, &SPI_InitStructure);
	
	SPI_Cmd(SPI1, ENABLE);
}

//timer setting
void TIM2_Configuration(uint16_t n_ms)
{	
	//  T=(TIM_Period+1)*(TIM_Prescaler+1)/TIMxCLK=(35999+1)*(1999+1)/72MHz=1s
	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;  
		//enable timer2
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2,ENABLE);
	
	TIM_ClearITPendingBit(TIM2,TIM_IT_Update);
	
	TIM_DeInit(TIM2);//10ms
	TIM_TimeBaseStructure.TIM_Period = n_ms*10-1;//(400-1);//freq:168MHz/4 = 41M,
	TIM_TimeBaseStructure.TIM_Prescaler = 4099;// 41M--4100= 10kHz
	TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseStructure.TIM_RepetitionCounter = 0x0;
	TIM_TimeBaseInit(TIM2,&TIM_TimeBaseStructure);
	
		
	TIM_ClearFlag(TIM2,TIM_FLAG_Update);
	TIM_ITConfig(TIM2,TIM_IT_Update,ENABLE);
	
	TIM_Cmd(TIM2,ENABLE);
}


void USART1_SendByte(uint8_t data)
{
	USART_SendData(USART1,data);
	while(USART_GetFlagStatus(USART1,USART_FLAG_TC)!=SET);
}

void USART1_SendBuffer(uint8_t* buff, uint16_t length)
{
	while(length--)
	{
		USART_SendData(USART1,*buff++);
		while(USART_GetFlagStatus(USART1,USART_FLAG_TC)!=SET);
	}
}
/**
  * @brief  reflect putchar to usart1
  * @param  nTime: specifies the delay time length, in milliseconds.
  * @retval None
  */
#ifdef __GNUC__
 
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif
 
PUTCHAR_PROTOTYPE
{
	 USART_SendData(USART1, (uint8_t) ch);
	 while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET){}		
	 return ch;
}
/***********************************************/
void NVIC_Config()
{
	NVIC_InitTypeDef NVIC_InitStructure;
	
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
		
	// Enable the USART1 Interrupt
	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	
	//TIMER2
	NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
	
	//CAN1
	NVIC_InitStructure.NVIC_IRQChannel = CAN1_RX0_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}
/***********************************************/
void CAN1_Config()
{
	//variables
	GPIO_InitTypeDef GPIO_InitStructure;
	CAN_InitTypeDef CAN_InitStructure;
	CAN_FilterInitTypeDef CAN_FilterInitStructure;	
	
		/* Enable GPIO clocks */
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
		/* Enable CAN clock */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);
//	RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN2, ENABLE);
		
  /* Configure CAN RX and TX pins */
	//Tx
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11|GPIO_Pin_12;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_UP;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

	/* Connect CAN pins to AF */
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource11, GPIO_AF_CAN1);
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource12, GPIO_AF_CAN1); 
	
  /* CAN register init */
//  CAN_DeInit(CAN1);
//	CAN_StructInit(&CAN_InitStructure);
	CAN_InitStructure.CAN_TTCM = DISABLE;
	CAN_InitStructure.CAN_ABOM = DISABLE;
	CAN_InitStructure.CAN_AWUM = DISABLE;
	CAN_InitStructure.CAN_NART = ENABLE;
	CAN_InitStructure.CAN_RFLM = DISABLE;
	CAN_InitStructure.CAN_TXFP = DISABLE;
	CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;	
	//CAN clock 168M/4 = 42M
  CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;    //1-4
	
  /* CAN Baudrate = 1 MBps (CAN clocked at 42 MHz) */
  CAN_InitStructure.CAN_BS1 = CAN_BS1_7tq; //1-16
  CAN_InitStructure.CAN_BS2 = CAN_BS2_6tq; //1-8	
	CAN_InitStructure.CAN_Prescaler = 3;//14M	
	CAN_Init(CAN1,&CAN_InitStructure);
	
	// CAN filter
	CAN_FilterInitStructure.CAN_FilterNumber = 0;
	CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
	CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
	CAN_FilterInitStructure.CAN_FilterIdHigh = Filter_ID1<<5;//Filter ID
	CAN_FilterInitStructure.CAN_FilterIdLow = 0;
	CAN_FilterInitStructure.CAN_FilterMaskIdHigh =0;
	CAN_FilterInitStructure.CAN_FilterMaskIdLow = 0;
	CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_Filter_FIFO0;
	CAN_FilterInitStructure.CAN_FilterActivation = ENABLE;	
	CAN_FilterInit(&CAN_FilterInitStructure);
	
//	CAN_FIFORelease(CAN1,CAN_FIFO0);
//	CAN_ClearITPendingBit(CAN1,CAN_IT_TME);
	CAN_ITConfig(CAN1, CAN_IT_FMP0, ENABLE);
}

void Init_RxMes(CanRxMsg *RxMessage)
{
  uint8_t ubCounter = 0;

  RxMessage->StdId = Device_ID;
  RxMessage->ExtId = 0x00;
  RxMessage->IDE = CAN_ID_STD;
  RxMessage->DLC = 0;
  RxMessage->FMI = 0;
  for (ubCounter = 0; ubCounter < 8; ubCounter++)
  {
    RxMessage->Data[ubCounter] = 0x00;
  }
}

u8 CAN1_SendByte(u8 data)
{
	u32 i = 0;
	u8 TransmitMailBox = 0;
	CanTxMsg CANTxMessage;
	CANTxMessage.StdId = Device_ID;
	CANTxMessage.ExtId = 0;
	CANTxMessage.IDE = CAN_ID_STD;
	CANTxMessage.RTR = CAN_RTR_DATA;
	CANTxMessage.DLC = 1;
	CANTxMessage.Data[0] = data;

	TransmitMailBox = CAN_Transmit(CAN1,&CANTxMessage);
	
	i=0;
	while((CAN_TransmitStatus(CAN1,TransmitMailBox) == CAN_TxStatus_Failed )&& (i < 0xFFF)) i++;
	if(i>=0XFFF) return 1;
	return 0;
}

void CAN1_Send2Bytes(u16 data)
{
	u32 i = 0;
	u8 TransmitMailBox = 0;
	CanTxMsg CANTxMessage;
	CANTxMessage.StdId = Device_ID;
	CANTxMessage.IDE = CAN_ID_STD;
	CANTxMessage.RTR = CAN_RTR_DATA;
	CANTxMessage.DLC = 2;
	CANTxMessage.Data[0] = data>>8;
	CANTxMessage.Data[1] = data;

	TransmitMailBox = CAN_Transmit(CAN1,&CANTxMessage);
		//
	i=0;
	while((CAN_TransmitStatus(CAN1,TransmitMailBox) ==CAN_TxStatus_Failed)&& (i < 0xFFF)) i++;
	DelayNus(100);
}

void CAN1_SendBuf(u8 *pBuf, u8 Num)
{	
	CanTxMsg CANTxMessage;
	u8 TransmitMailBox = 0;	
	u32 i = 0;
	
	u8 frame_num=Num/8;
	u8 rem_num=Num%8;
		
	CANTxMessage.StdId = Device_ID;
	CANTxMessage.IDE = CAN_ID_STD;
	CANTxMessage.RTR = CAN_RTR_DATA;
	
	while(frame_num)
	{
		CANTxMessage.DLC = 8;

		for(i=0;i < 8;i++)
		{
			CANTxMessage.Data[i] = *pBuf++;
		}
				
		TransmitMailBox =  CAN_Transmit(CAN1,&CANTxMessage);
		
		i=0;
		while((CAN_TransmitStatus(CAN1,TransmitMailBox) != CANTXOK)&& (i != 0xFFFF)) i++;
		DelayNus(300);
		frame_num--;
	}	
	
	if(rem_num)
	{
		CANTxMessage.DLC = rem_num;
		for(i=0;i < rem_num;i++)
		{
			CANTxMessage.Data[i] = *pBuf++;
		}
		TransmitMailBox = CAN_Transmit(CAN1,&CANTxMessage);
		i=0;
		while((CAN_TransmitStatus(CAN1,TransmitMailBox) !=CANTXOK)&& (i != 0xFFFF)) i++;
		DelayNus(100);
	}	
}
/***********************************************/
/**
  * @brief  Inserts a delay time.
  * @param  nTime: specifies the delay time length, in milliseconds.
  * @retval None
  */
void DelayNus(uint32_t nUs)
{
	volatile uint32_t i=0;
	while(nUs--)
	{
		while(i<168) i++;
	}
}





