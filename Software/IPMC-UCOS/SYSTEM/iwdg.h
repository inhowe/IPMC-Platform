#ifndef __IWDG_H
#define __IWDG_H

#include "includes.h"

extern IWDG_HandleTypeDef IWDG_Handler;

void IWDG_Init(void);
void IWDG_Feed(void);
void IWDG_Start(void);

#endif
