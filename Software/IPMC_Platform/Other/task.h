#ifndef __TASK_H
#define __TASK_H

#include "stm32f4xx.h"
#include "stdbool.h"
#include "wave.h"
#include "ADS1115.h"
#include "AD5722.h"

extern bool T_DAC;
extern bool T_DEBUG;

void TaskDAC(bool *TaskBit);
void TaskDebug(bool *TaskBit);
void TaskInitVariable(void);

#endif
