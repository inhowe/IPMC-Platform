#ifndef __TASK_H
#define __TASK_H

#include "stm32f4xx.h"
#include "stdbool.h"
#include "wave.h"
#include "ADS1115.h"
#include "AD5722.h"
#include "protocol.h"

extern bool T_DAC;
extern bool T_ADC;
extern bool T_ToPC;
extern bool T_DEBUG;

void TaskIdle(bool *TaskBit);
void TaskDAC(bool *TaskBit);
void TaskADC(bool *TaskBit);
void TaskToPC(bool *TaskBit);
void TaskDebug(bool *TaskBit);
void TaskInitVariable(void);

#endif
