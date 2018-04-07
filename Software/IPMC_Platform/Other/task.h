#ifndef __TASK_H
#define __TASK_H

#include "stm32f4xx.h"
#include "stdbool.h"
#include "wave.h"
#include "ADS1115.h"
#include "AD5722.h"

void TaskDAC(bool *TimeBit);
void TaskDebug(bool *TimeBit);
void TaskInitVariable(void);

#endif
