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
u8 time_const = 0x00;
//extern CanRxMsg *RxMessage;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{	
	uint8_t out;

//	uint8_t i = 0;

  /* Add your application code here */
	NVIC_Config();
//	GPIO_Config();
	USART1_Config(115200);	 
//	delay_ms(100);
	TIM2_Configuration(200);
	
	TLV5608_init();
	tronics_config();
		/* Enable USART */
	USART_Cmd(USART1, ENABLE);

//	Init_RxMes(RxMessage);
	//CAN1_Config();		
	printf("Init. finished!\r\n");
  /* Infinite loop */
	
signal = 0x06;
  while (1)
  {	

;
	}
}



/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
