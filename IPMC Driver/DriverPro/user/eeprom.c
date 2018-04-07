/*******************************************************************************
* File Name          : i2c_fram.c
* Author             : Appcat
* Version            : V0.0.1
* Date               : 07/11/2009
* Description        : This file provides a set of functions needed to manage the
*                      communication between I2C peripheral and I2C FM24CL16 FRAM.
*******************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h" 
#include "eeprom.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define I2C1_SLAVE_ADDRESS7	0xA0
#define FRAM_ADDRESS	0xA1
//SCL-pb6;SDA-pb7
#define SCL1_H				 GPIOB->BSRRL |= GPIO_Pin_6
#define SCL1_L         GPIOB->BSRRH |= GPIO_Pin_6
   
#define SDA1_H         GPIOB->BSRRL |= GPIO_Pin_7
#define SDA1_L         GPIOB->BSRRH |= GPIO_Pin_7

#define SCL1_read      GPIOB->IDR  & GPIO_Pin_6
#define SDA1_read      GPIOB->IDR  & GPIO_Pin_7


/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

void I2C1_delay(void)
{       
   volatile u8 i=150; //
   while(i)
   {
     i--;
   }
}

u8 I2C1_Start(void)
{
	SDA1_H;
	SCL1_H;
	I2C1_delay();
	if(!SDA1_read)
		return ERROR;        //
	SDA1_L;
	I2C1_delay();
	if(SDA1_read) 
		return ERROR;        //
	SDA1_L;
	I2C1_delay();
	return SUCCESS;
}

void I2C1_Stop(void)
{
	SCL1_L;
	I2C1_delay();
	SDA1_L;
	I2C1_delay();
	SCL1_H;
	I2C1_delay();
	SDA1_H;
	I2C1_delay();
}

void I2C1_Ack(void)
{       
	SCL1_L;
	I2C1_delay();
	SDA1_L;
	I2C1_delay();
	SCL1_H;
	I2C1_delay();
	SCL1_L;
	I2C1_delay();
}

void I2C1_NoAck(void)
{       
	SCL1_L;
	I2C1_delay();
	SDA1_H;
	I2C1_delay();
	SCL1_H;
	I2C1_delay();
	SCL1_L;
	I2C1_delay();
}

u8 I2C1_WaitAck(void)          //
{
	SCL1_L;
	I2C1_delay();
	SDA1_H;                       
	I2C1_delay();
	SCL1_H;
	I2C1_delay();
	if(SDA1_read)
	{
	SCL1_L;
	return ERROR;
	}
	SCL1_L;
	return SUCCESS;
}

void I2C1_SendByte(u8 SendByte) //
{
	u8 i=8;
	while(i--)
	{
			SCL1_L;
			I2C1_delay();
		if(SendByte&0x80)
			SDA1_H;  
		else
			SDA1_L;   
			SendByte<<=1;
			I2C1_delay();
			SCL1_H;
			I2C1_delay();
	}
	SCL1_L;
}

u8 I2C1_ReceiveByte(void)  //
{
	u8 i=8;
	u8 ReceiveByte=0;

	SDA1_H;                               
	while(i--)
	{
		ReceiveByte<<=1;      
		SCL1_L;
		I2C1_delay();
		SCL1_H;
		I2C1_delay();       
		if(SDA1_read)
		{
			ReceiveByte|=0x01;
		}
	}
	SCL1_L;
	return ReceiveByte;
}
u8 I2C1_WriteSingleByte(u8 data,u16 WriteAddr)
	{
		if(! I2C1_Start())
			return ERROR;
		I2C1_SendByte(I2C1_SLAVE_ADDRESS7);
		if (!I2C1_WaitAck())
		{
			I2C1_Stop();
			return ERROR;
		}
		I2C1_SendByte(WriteAddr>>8);
		I2C1_WaitAck();
		I2C1_SendByte(WriteAddr);
		I2C1_WaitAck();
		
		I2C1_SendByte(data);
		I2C1_WaitAck();
		
		I2C1_Stop();
		
		return SUCCESS;		
	}
		
u8 I2C1_WriteBuffer(u8* pBuffer, u16 WriteAddr, u8 NumByteToWrite)
{
	if (!I2C1_Start()) 
		return ERROR;
	
	I2C1_SendByte(I2C1_SLAVE_ADDRESS7);//
	if (!I2C1_WaitAck())
		{
			I2C1_Stop();
			return ERROR;
		}
	I2C1_SendByte(WriteAddr>>8);   //     
	I2C1_WaitAck();

	I2C1_SendByte(WriteAddr);   //     
	I2C1_WaitAck();		

	while(NumByteToWrite--)
	{
		I2C1_SendByte(*pBuffer++);
		I2C1_WaitAck();
	}	
	I2C1_Stop();	
	return SUCCESS;
}

u8 I2C1_ReadBuffer(u8* pBuffer, u16 ReadAddr, u8 NumByteToRead)
{
	if (!I2C1_Start()) 
		return ERROR;
	
	I2C1_SendByte(I2C1_SLAVE_ADDRESS7);//
	if (!I2C1_WaitAck())
	{
		I2C1_Stop();
		return ERROR;
	}
	
	I2C1_SendByte(ReadAddr>>8);   //     
	I2C1_WaitAck();
	I2C1_SendByte(ReadAddr);   //     
	I2C1_WaitAck();
	
	if(!I2C1_Start())
	{
		I2C1_Stop();
		return ERROR;
	}
	
	I2C1_SendByte(FRAM_ADDRESS);
	I2C1_WaitAck();
	
	while(NumByteToRead)
	{
		*pBuffer = I2C1_ReceiveByte();
		if(NumByteToRead == 1)
			I2C1_NoAck();
		else 
			I2C1_Ack();
		
		pBuffer++;
		NumByteToRead--;
	}
	I2C1_Stop();
	return SUCCESS;
}
u8 I2C1_ReadSingleByte(u16 Addr)
{		
	u8 temp = 0;
	if(!I2C1_Start())
	{
		I2C1_Stop();
		return ERROR;
	}
	I2C1_SendByte(I2C1_SLAVE_ADDRESS7);
	I2C1_WaitAck();
	
	I2C1_SendByte(Addr>>8);
	I2C1_WaitAck();
	I2C1_SendByte(Addr);
	I2C1_WaitAck();
	
//	I2C_Stop();
	if(!I2C1_Start())
	{
		I2C1_Stop();
		return ERROR;
	}
	
	I2C1_SendByte(FRAM_ADDRESS);
	I2C1_WaitAck();	
	temp = I2C1_ReceiveByte();
	I2C1_NoAck();
	I2C1_Stop();
	return temp;
}

/*******************************************************************************
* Function Name  : 
* Description    : 
* Input          : 
* Output         : None
* Return         : None
*******************************************************************************/
u32 FM24V05_IDRead(void)
{
	u32 temp = 0;
	if(!I2C1_Start())
	{
		I2C1_Stop();
		return ERROR;
	}
	
	I2C1_SendByte(0xF8);
	I2C1_WaitAck();
	
	I2C1_SendByte(0xA0);
	I2C1_WaitAck();
	
	if(!I2C1_Start())
	{
		I2C1_Stop();
		return ERROR;
	}
	I2C1_SendByte(0xF9);
	I2C1_WaitAck();
	
	temp = I2C1_ReceiveByte()<<16;
	I2C1_Ack();
	temp |= I2C1_ReceiveByte()<<8;
	I2C1_Ack();
	temp |= I2C1_ReceiveByte();
	I2C1_NoAck();
	I2C1_Stop();
	return temp;		
}
