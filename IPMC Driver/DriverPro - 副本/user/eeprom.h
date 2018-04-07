/*******************************************************************************
* File Name          : i2c_fram.h
* Author             : MCD Application Team
* Version            : V2.0.1
* Date               : 06/13/2008
* Description        : Header for i2c_ee.c module
*******************************************************************************/
/* Define to prevent recursive inclusion ------------------------------------ */
#ifndef __I2C_FRAM_H
#define __I2C_FRAM_H

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h" 

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/


/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */


void I2C1_delay(void);
u8 I2C1_Start(void);
void I2C1_Stop(void);
void I2C1_Ack(void);
void I2C1_NoAck(void);
u8 I2C1_WaitAck(void);
void I2C1_SendByte(u8);
u8 I2C1_ReceiveByte(void);
u8 I2C1_WriteSingleByte(u8 data,u16 WriteAddr);
u8 I2C1_WriteBuffer(u8* pBuffer, u16 WriteAddr, u8 NumByteToWrite);
u8 I2C1_ReadBuffer(u8* pBuffer, u16 ReadAddr, u8 NumByteToRead);
u8 I2C1_ReadSingleByte(u16 Addr);

#endif /* __I2C_FRAM_H */
