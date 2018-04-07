/**
  ******************************************************************************
  * @file    Project/STM32F4xx_StdPeriph_Templates/main.c 
  * @author  MCD Application Team
  * @version V1.7.1
  * @date    20-May-2016
  * @brief   Main program body
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h"
//#include "ad7416.h"
#include "tlv5608.h"
#include "delay.h"
#include "dev.h"
#include "stdio.h"


/** @addtogroup Template_Project
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
u8 timer_counter = 0;
u8 signal = 0xff;
double TLV_amp=1;
double TLV_cycle=1;
u8 time_const = 0x00;
//extern CanRxMsg *RxMessage;
/* Private function prototypes -----------------------------------------------*/
void LED_Config(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	//Deinit all teh GPIO
  GPIO_DeInit(GPIOC);
	//Enable the gpio clock
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC, ENABLE);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
	GPIO_Init(GPIOC, &GPIO_InitStructure);	
	
	GPIO_SetBits(GPIOC,GPIO_Pin_0|GPIO_Pin_1);

}
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{	
//	uint8_t out;

//	uint8_t i = 0;

  /* Add your application code here */
	NVIC_Config();
	LED_Config();
	USART1_Config(115200);	 
//	delay_ms(100);
	TIM2_Configuration(10);
	
	TLV5608_init();
	tronics_config();
		/* Enable USART */
	USART_Cmd(USART1, ENABLE);

//	Init_RxMes(RxMessage);
	//CAN1_Config();		
	printf("Init. finished!\r\n");
  /* Infinite loop */
	
	signal = 0xff;
	TLV_amp=1.5;
	TLV_cycle=40;
  while (1)
  {	
		GPIO_ResetBits(GPIOC,GPIO_Pin_0);
		GPIO_SetBits(GPIOC,GPIO_Pin_1);
		delay_ms(500);
		GPIO_SetBits(GPIOC,GPIO_Pin_0);
		GPIO_ResetBits(GPIOC,GPIO_Pin_1);
		delay_ms(500);
	}
}



/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
