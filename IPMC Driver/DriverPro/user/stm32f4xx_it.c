/**
  ******************************************************************************
  * @file    Project/STM32F4xx_StdPeriph_Templates/stm32f4xx_it.c 
  * @author  MCD Application Team
  * @version V1.7.1
  * @date    20-May-2016
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and 
  *          peripherals interrupt service routine.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2016 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h" 
#include "dev.h"
#include "stdio.h"
#include "math.h"
#include "tlv5608.h"
/** @addtogroup Template_Project
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
#define Pi		3.1415
/* Private variables ---------------------------------------------------------*/
extern u8 timer_counter;	//each 10ms
extern u8 signal;
extern u8 time_const;

uint8_t temp_read[2];
uint16_t out;

extern CanRxMsg *RxMessage;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M4 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSVC exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
//  TimingDelay_Decrement();
}

/******************************************************************************/
/*                 STM32F4xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f4xx.s).                                               */
/******************************************************************************/
/**
  * @}
  */ 
void TIM2_IRQHandler(void)
{	
	if(TIM_GetFlagStatus(TIM2,TIM_FLAG_Update)!=RESET) 
	{		
		TIM_ClearFlag(TIM2,TIM_FLAG_Update);   //
		timer_counter++;
		timer_counter %=2 ;
		
			switch(signal)
			{
				case 0x00:
				{
					out = TLV5608_out(CHANNEL_A,4.0, 5.0);
//					printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0x01:
				{
					out = TLV5608_out(CHANNEL_B,4.0, 5.0);
	//				printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0x02:
				{
					out = TLV5608_out(CHANNEL_C,4.0, 5.0);
//					printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0x03:
				{
					out = TLV5608_out(CHANNEL_D,4.0, 5.0);
	//				printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0x04:
				{
					out = TLV5608_out(CHANNEL_E,4.0, 5.0);
//					printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0x05:
				{
					out = TLV5608_out(CHANNEL_F,4.0, 5.0);
//					printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0x06:
				{
					out = TLV5608_out(CHANNEL_G,2.0, 6.0);
//					printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0x07:
				{
					out = TLV5608_out(CHANNEL_H,4.0, 5.0);
//					printf("gyro: %x\r\n",out);
					TLV5608_outenable();
					break;
				}
				case 0xff:
				{
					GPIO_SetBits(GPIOA,GPIO_Pin_4);
					timer_counter = 0;
					break;
				}
					default: break;
			}	
	}		
}
/**
  * @brief  This function handles PPP interrupt request.
  * @param  None
  * @retval None
  */
/*void PPP_IRQHandler(void)
{
}*/

/**
  *@brief This function handles USART1 interrupt request.
	*@param none
	*@retval none
  */ 
void USART1_IRQHandler(void)
{
//	static uint8_t temp;
	/* USART in Receiver mode */
	if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
	{
		USART_ClearITPendingBit(USART1,USART_IT_RXNE);
		/* Read one byte from the receive data register */
		signal = USART_ReceiveData(USART1);
		printf("signal: %x\r\n",signal);
		//send back the received data
	}
}
	

/**
  * @brief  This function handles PPP interrupt request.
  * @param  None
  * @retval None
  */
void CAN1_RX0_IRQHandler()
{		
//	u8 Order, data_count;
	
  CanRxMsg RxMessage;
//	CanTxMsg TxMessage;
//	u8 TransmitMailBox = 0;
  RxMessage.StdId=0x00;
  RxMessage.ExtId=0x00;
  RxMessage.IDE=0;
  RxMessage.DLC=0;
  RxMessage.FMI=0;
  CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
	printf("can rec. int. out \r\n");

/********************************
* Leading Frame: 
* 0x28 Order  data Len.  0x29      
* 0     1        2        3
* Data frame
*********************************/
	if((0x28 == RxMessage.Data[0])&&(0x29 == RxMessage.Data[3]))
	{//
//		if(RxMessage.DLC > 4)
//		{//Error Code
//			CAN1_SendByte(0xE1);
//			return;
//		}
		CAN1_SendByte(0xE1);
//		Order = RxMessage.Data[1];// config type
//		data_count = RxMessage.Data[2];	//data to be read
	}

}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

