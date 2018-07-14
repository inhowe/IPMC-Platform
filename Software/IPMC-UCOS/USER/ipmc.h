#ifndef __IPMC_H
#define __IPMC_H

#include "includes.h"

//#define THEARM
#define PLATFORM

#ifdef THEARM
    #define FREE()      GPIO_SetBits(GPIOA,GPIO_Pin_2);  GPIO_SetBits(GPIOA,GPIO_Pin_3);  
    #define RELEASE()   GPIO_SetBits(GPIOA,GPIO_Pin_2);  GPIO_ResetBits(GPIOA,GPIO_Pin_3); 
    #define GRAB()      GPIO_ResetBits(GPIOA,GPIO_Pin_2);GPIO_SetBits(GPIOA,GPIO_Pin_3);  
    #define CLEAR()     GPIO_ResetBits(GPIOA,GPIO_Pin_2);GPIO_ResetBits(GPIOA,GPIO_Pin_3); 
#else 
    #ifdef PLATFORM
        #define GETARMSTATUS()  ( (HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_10)<<1)|HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_11) )
        #define FREE        0x03
        #define RELEASE     0x02
        #define GRAB        0x01
        #define CLEAR       0x00
    #endif
#endif

void IPMC_Init(void);

#endif
