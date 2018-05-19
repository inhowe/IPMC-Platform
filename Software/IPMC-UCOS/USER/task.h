#ifndef __TASK_H
#define __TASK_H

#include "includes.h"

#define   DAC_TASK_PRIO       11
#define   ADC_TASK_PRIO       12
#define   COM_TASK_PRIO       13
#define LASER_TASK_PRIO       14
#define   LED_TASK_PRIO       20
#define  IDLE_TASK_PRIO       48
#define   DBG_TASK_PRIO       49
#define START_TASK_PRIO       50 

#define   DAC_STK_SIZE        128
#define   ADC_STK_SIZE        128
#define   COM_STK_SIZE        128
#define LASER_STK_SIZE        128
#define   DBG_STK_SIZE        256
#define   LED_STK_SIZE        64
#define START_STK_SIZE        64
#define  IDLE_STK_SIZE        64
//ÈÎÎñ¶ÑÕ»
extern OS_STK LED_TASK_STK[LED_STK_SIZE];
extern OS_STK DAC_TASK_STK[DAC_STK_SIZE];
extern OS_STK ADC_TASK_STK[ADC_STK_SIZE];
extern OS_STK COM_TASK_STK[COM_STK_SIZE];
extern OS_STK DBG_TASK_STK[DBG_STK_SIZE];
extern OS_STK START_TASK_STK[START_STK_SIZE];
extern OS_STK IDLE_TASK_STK[IDLE_STK_SIZE];
extern OS_STK LASER_TASK_STK[LASER_STK_SIZE];

void start_task(void *pdata);
void led_task(void *pdata);
void DBG_Task(void* pdata);
void DAC_Task(void* pdata);
void ADC_Task(void* pdata);
void COM_Task(void* pdata);
void IDLE_Task(void* pdata);
void LASER_Task(void* pdata);
#endif
