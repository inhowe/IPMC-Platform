/*******************************************************************************
* File Name          : delay.c
* Author             : Appcat
* Version            : V0.0.1
* Date               : 07/11/2009
* Description        : This file provides a set of functions needed to manage the
*                      communication between I2C peripheral and I2C FM24CL16 FRAM.
*******************************************************************************/


#include "stm32f4xx_conf.h"
#include "delay.h"
  
void delay_us(u32 nus)
{
	u32 temp;
	SysTick->LOAD = 21*nus;
	SysTick->VAL=0x00;//clear counter
	SysTick->CTRL=0x01;//enable coutner with the external clock
	do
	{
		temp=SysTick->CTRL;//read the register
	}while((temp&0x01)&&(!(temp&(1<<16))));//wait to reach the counter
	
	SysTick->CTRL=0x00; //disable systic
	SysTick->VAL =0x00; //set teh value 0
}

void delay_ms(u16 nms)
{
	 u32 temp;
	 SysTick->LOAD = 21000*nms;
	 SysTick->VAL=0x00;//set counter to 0
	 SysTick->CTRL=0x01;//start systic
	 do
	 {
			temp=SysTick->CTRL;//read register
	 }while((temp&0x01)&&(!(temp&(1<<16))));//
	SysTick->CTRL=0x00; //
	SysTick->VAL =0x00; //
}
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
	
