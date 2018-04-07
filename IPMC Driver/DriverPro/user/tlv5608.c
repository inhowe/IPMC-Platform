/**
  ******************************************************************************
  * @file    gypro3300.c 
  * @author  MCD Application Team
  * @version V1.7.1
  * @date    20-May-2016
  * @brief   Main program body
	* @attention The results will be ready 8.22ms later after converter start
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h"
#include "tlv5608.h"
#include "stdio.h"
#include "math.h"

/** @addtogroup Devices
  * @{
  */

/** @defgroup ms5611 
  * @brief ms5611 driver modules
  * @{
  */ 
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
#define TLV_MISO			GPIO_Pin_6	//PA6
#define TLV_MOSI			GPIO_Pin_7	//PA7
#define TLV_SCLK			GPIO_Pin_3	//PB3
#define TLV_FS				GPIO_Pin_15	//PC15

#define TLV_ENABLE()			GPIO_ResetBits(GPIOC, TLV_FS)
#define TLV_DISENABLE()		GPIO_SetBits(GPIOC, TLV_FS)

#define TLV_PRE				GPIO_Pin_13	//PC13
#define TLV_MODE			GPIO_Pin_14	//PC14
#define TLV_LDAC			GPIO_Pin_4	//PA4



//#define U5_ENABLE()			GPIO_ResetBits(GPIOC, TR_CSB0)
//#define U5_DISENABLE()	GPIO_SetBits(GPIOC, TR_CSB0)

//#define U9_ENABLE()			GPIO_ResetBits(GPIOC, TR_CSB4)
//#define U9_DISENABLE()	GPIO_SetBits(GPIOC, TR_CSB4)

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
double i_index = 0.0;
/* Private function prototypes -----------------------------------------------*/

//static void Delay(__IO uint32_t nTime);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
	
void TLV5608_init()
{
	GPIO_InitTypeDef GPIO_InitStructure;
  SPI_InitTypeDef  SPI_InitStructure;

  /* Peripheral Clock Enable -------------------------------------------------*/
	  /* Enable GPIO clocks */
  RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA,ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB,ENABLE);
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC,ENABLE);
  /* Enable the SPI clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1,ENABLE); 
	//gpio config
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_UP;//
  GPIO_InitStructure.GPIO_Pin = TLV_MISO|TLV_MOSI;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_UP;//
  GPIO_InitStructure.GPIO_Pin = TLV_SCLK;
  GPIO_Init(GPIOB, &GPIO_InitStructure);
	
		 /* Connect SPI pins to AF5 */  
  GPIO_PinAFConfig(GPIOA,GPIO_PinSource6, GPIO_AF_SPI1);
  GPIO_PinAFConfig(GPIOA,GPIO_PinSource7, GPIO_AF_SPI1);  
  GPIO_PinAFConfig(GPIOB,GPIO_PinSource3, GPIO_AF_SPI1);

 
 /*!< Configure  CS pin in output pushpull mode ********************/
	//	TLV_FS				GPIO_Pin_15	//PC15
	//	TLV_PRE				GPIO_Pin_13	//PC13
	//	TLV_MODE			GPIO_Pin_14	//PC14	
	//	TLV_LDAC			GPIO_Pin_4	//PA4
	
	GPIO_InitStructure.GPIO_Pin = TLV_FS|TLV_PRE|TLV_MODE;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
//	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_Init(GPIOC, &GPIO_InitStructure);
	//PA4
	GPIO_InitStructure.GPIO_Pin = TLV_LDAC;
	GPIO_Init(GPIOA,&GPIO_InitStructure);
	

  /* SPI configuration -------------------------------------------------------*/
  SPI_I2S_DeInit(SPI1);
  SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
	SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
  SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
  SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;
  SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;
  SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_256;//bandRate = fclk/prescaler
  SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
  SPI_InitStructure.SPI_CRCPolynomial = 7;	
	
  SPI_Init(SPI1, &SPI_InitStructure);	
	SPI_Cmd(SPI1, ENABLE);
	
	GPIO_SetBits(GPIOC, TLV_LDAC);	
	GPIO_SetBits(GPIOC, TLV_MODE);//uc mode
	GPIO_SetBits(GPIOC, TLV_PRE);
	GPIO_SetBits(GPIOC,TLV_FS);
}

void TLV5608_preset()
{
	GPIO_ResetBits(GPIOA,GPIO_Pin_4);
	TLV5608_delay1ms(10);
	GPIO_SetBits(GPIOA,GPIO_Pin_4);
}
	
uint8_t SPI1_RWByte(uint8_t byte)
{	
	while (!(SPI1->SR & (1 << 1)));
	SPI1->DR = byte;
	while (!(SPI1->SR & 1));
	return SPI1->DR;
}

uint16_t TLV5608_out(uint16_t channel, double amp, double cycle)
{
	double temp;
	uint16_t out_data;	
	// do not change about the amplitude(2)
	if(i_index >=cycle) i_index = 0.0;
	temp = amp/2.0*sin(2.0*3.1415/cycle*i_index) + amp/2.0;
	i_index += 0.2;
	
	out_data = (uint16_t)(temp/5.00*512.0-1.0);
	
	out_data = (channel<<11)  | ((out_data<<2)&0x0fff);
	
//	printf("out_data:0x %x\r\n",out_data);
	
	TLV_ENABLE();
	TLV5608_delay1us(1);
	SPI1_RWByte(out_data>>8);
//	TLV5608_delay1us(1);
	SPI1_RWByte(out_data);
	TLV5608_delay1us(1);
	TLV_DISENABLE();
	
	return out_data;
}
	
void TLV5608_outenable()
{
	GPIO_ResetBits(GPIOA,TLV_LDAC);
//	TLV5608_delay1us(2);
//	GPIO_SetBits(GPIOA,TLV_LDAC);
}

void tronics_config(void)
{
	TLV_ENABLE();
	TLV5608_delay1us(1);
	SPI1_RWByte(0x80);
	SPI1_RWByte(0);
	TLV5608_delay1us(5);
	TLV_DISENABLE();	
	TLV5608_delay1us(5);
	TLV_ENABLE();
	TLV5608_delay1us(1);
	SPI1_RWByte(0x90);
	SPI1_RWByte(0);
	TLV5608_delay1us(5);
	TLV_DISENABLE();
}



void TLV5608_delay1us(uint32_t nus)
{
	volatile uint32_t time=0;
	while(nus--)
	{
		while(time<160) time++;
	}
}
	
void TLV5608_delay1ms(uint32_t nms)
{
	volatile uint32_t time=0;
	while(nms--)
	{
		while(time<160000) time++;
	}
}

