/**
  ******************************************************************************
  * @file    gypro3300.h 
  * @author  MCD Application Team
  * @version V1.7.1
  * @date    20-May-2016
  * @brief   Main program body
  ******************************************************************************
  */
//All rights reserved		

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __GYPRO3300_H
#define __GYPRO3300_H

#ifdef __cplusplus
 extern "C" {
#endif /* __cplusplus */

/* Includes ------------------------------------------------------------------*/	 
#include "stm32f4xx_conf.h" 
	
/* Exported types ------------------------------------------------------------*/
		
/* Exported constants --------------------------------------------------------*/

/* Exported macro ------------------------------------------------------------*/
#define CHANNEL_A			0x00
#define CHANNEL_B			0x01
#define CHANNEL_C			0x02
#define CHANNEL_D			0x03
#define CHANNEL_E			0x04
#define CHANNEL_F			0x05
#define CHANNEL_G			0x06
#define CHANNEL_H			0x07
	 
/* Exported constants --------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void TLV5608_init(void);
void TLV5608_preset(void);
uint8_t SPI1_RWByte(uint8_t byte);
uint16_t TLV5608_out(uint16_t channel, double amp, double cycle);
void tronics_config(void);
	
void TLV5608_outenable(void);

void TLV5608_delay1us(uint32_t nus);
void TLV5608_delay1ms(uint32_t nms);
	 



	 

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif
