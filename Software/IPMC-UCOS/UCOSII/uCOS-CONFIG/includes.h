/*
************************************************************************************************
主要的包含文件

文 件: INCLUDES.C ucos包含文件
作 者: Jean J. Labrosse
************************************************************************************************
*/

#ifndef __INCLUDES_H__
#define __INCLUDES_H__
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
#include <stdarg.h>

#include "ucos_ii.h"
#include "os_cpu.h"
#include "os_cfg.h"

#include <stm32f4xx.h>	    

#include "delay.h"
#include "myiic.h"
#include "usart.h"
#include "led.h"
#include "task.h"
#include "wave.h"
#include "AD5722.h"
#include "ADS1115.h"
#include "queue.h"
#include "key.h"
#include "protocol.h"
#include "can.h"
#include "laser.h"
#include "algorithm.h"
#include "SHT2x.h"

#define  SetBit(x,y)   x|=(1<<y) //将X的第Y位置1
#define  ClrBit(x,y)   x&=~(1<<y) //将X的第Y位清0
#define  ReadBit(x,y)  (x>>y)&0x01
//ErrCode Bit Define
#define LASERErrBIT      0
#define OverCurrentBIT   15
//#define LASERErr         0x8000

#define MAXBoardID 0x01

#define RS485MODE_TX() HAL_GPIO_WritePin(GPIOD,GPIO_PIN_2,GPIO_PIN_SET);
#define RS485MODE_RX() HAL_GPIO_WritePin(GPIOD,GPIO_PIN_2,GPIO_PIN_RESET);

extern OS_EVENT *CAN_Q;
extern OS_EVENT *UART1_Q;
extern OS_EVENT *COM2Msg;

extern void* CAN_QTbl[64];
extern void* UART1_QTbl[64];
extern INT16U BoardID;
extern INT16U ErrCode;
extern float TEMP,HUMI;
#endif































