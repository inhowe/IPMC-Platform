#ifndef _USART_H
#define _USART_H
#include "sys.h"
#include "stdio.h"	
//////////////////////////////////////////////////////////////////////////////////	 
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//ALIENTEK STM32F429开发板
//串口1初始化		   
//正点原子@ALIENTEK
//技术论坛:www.openedv.csom
//修改日期:2015/6/23
//版本：V1.0
//版权所有，盗版必究。
//Copyright(C) 正点原子 2009-2019
//All rights reserved
//********************************************************************************
//V1.0修改说明 
////////////////////////////////////////////////////////////////////////////////// 	

#define RS232_TX_Pin        GPIO_PIN_2
#define RS232_TX_GPIO_Port  GPIOA
#define RX232_RX_Pin        GPIO_PIN_3
#define RX232_RX_GPIO_Port  GPIOA

extern UART_HandleTypeDef UART1_Handler; //UART句柄
extern UART_HandleTypeDef UART2_Handler; //UART句柄
extern UART_HandleTypeDef UART3_Handler; //UART句柄

void uart1_init(u32 bound);
void uart2_init(u32 bound);
void uart3_init(u32 bound);
#endif
