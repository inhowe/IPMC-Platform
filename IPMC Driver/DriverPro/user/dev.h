/*******************************************************************************
* File Name          : dev.h
* Author             : MCD Application Team
* Version            : V2.0.1
* Date               : 06/13/2008
* Description        : Header for i2c_ee.c module
*******************************************************************************/
#ifndef __DEV_H__
#define __DEV_H__

#ifdef __cplusplus
extern "C" {
#endif 
	
/* Define to prevent recursive inclusion ------------------------------------ */

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h" 

/* Exported macro ------------------------------------------------------------*/

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */
//void GPIO_Config(void);
void USART1_Config(uint32_t baudRate);
void USART3_Config(uint32_t baudRate);
	
void SPI2_Config(void);
void SPI1_Config(void);
void TIM2_Configuration(uint16_t n_ms);

void NVIC_Config(void);
void CAN1_Config(void);
void Init_RxMes(CanRxMsg *RxMessage);
u8 CAN1_SendByte(u8 data);
void CAN1_Send2Bytes(u16 data);
void CAN1_SendBuf(u8 *pBuf, u8 Num);

void DelayNus(uint32_t nUs);	
	
void USART1_SendByte(uint8_t data);	
void USART1_SendBuffer(uint8_t* buff, uint16_t length);	






#ifdef __cplusplus
}

#endif 

#endif /* __dev_H__ */


