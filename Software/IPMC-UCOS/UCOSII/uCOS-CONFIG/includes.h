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
#include "arm_math.h"

#include "ucos_ii.h"
#include "os_cpu.h"
#include "os_cfg.h"

#include <stm32f4xx.h>	    

#include "delay.h"
#include "myiic.h"
#include "usart.h"
#include "dma.h"

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
#include "iwdg.h"
#include "ipmc.h"

#define  SetBit(x,y)   x|=(1<<y) //将X的第Y位置1
#define  ClrBit(x,y)   x&=~(1<<y) //将X的第Y位清0
#define  ReadBit(x,y)  (x>>y)&0x01

//ErrCode各位定义
#define LASERErrBIT      0
#define OverCurrentBIT   15
#define OverValtageBIT   14
#define OverForceBIT     13

#define MAXBoardID 0x01

#define RS485MODE_TX() HAL_GPIO_WritePin(GPIOD,GPIO_PIN_2,GPIO_PIN_SET);
#define RS485MODE_RX() HAL_GPIO_WritePin(GPIOD,GPIO_PIN_2,GPIO_PIN_RESET);

extern OS_EVENT *CAN_Q;
extern OS_EVENT *UART1_Q;
extern OS_EVENT *COM2Msg;

extern void UpgradeSystem(void);

extern void* CAN_QTbl[64];
extern void* UART1_QTbl[64];
extern INT16U BoardID;
extern INT16U ErrCode;
extern float TEMP,HUMI;
extern double Current_mA,Power_mW,Laser_mm,Force_mN,Energy;
extern bool DBG_Flag,CTR_Flag,CARLIB_OK_Flag;

#endif































