#ifndef __IPMC_H
#define __IPMC_H

#include "includes.h"

//#define ROBOT_ARM

#ifdef ROBOT_ARM
        #define GETARMSTATUS()  ( (HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_10)<<1)|HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_11) )
        #define FREE        0x03
        #define RELEASE     0x02
        #define GRAB        0x01
        #define CLEAR       0x00
#endif

void IPMC_Init(void);

#endif
