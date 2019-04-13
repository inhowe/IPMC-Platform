#ifndef __TASK_H
#define __TASK_H

#include "includes.h"

#define   DAC_TASK_PRIO       11
#define   ADC_TASK_PRIO       12
#define   COM_TASK_PRIO       13
#define LASER_TASK_PRIO       14
#define SHT20_TASK_PRIO       15
#define PRINT_TASK_PRIO       16
#define   LED_TASK_PRIO       47
#define  IDLE_TASK_PRIO       48
#define START_TASK_PRIO       50 

#define PRINT_STK_SIZE        256
#define   DAC_STK_SIZE        256
#define   ADC_STK_SIZE        128
#define   COM_STK_SIZE        128
#define LASER_STK_SIZE        128
#define SHT20_STK_SIZE        128
#define   LED_STK_SIZE        64
#define START_STK_SIZE        128
#define  IDLE_STK_SIZE        64
//ÈÎÎñ¶ÑÕ»
extern OS_STK LED_TASK_STK[LED_STK_SIZE];
extern OS_STK DAC_TASK_STK[DAC_STK_SIZE];
extern OS_STK ADC_TASK_STK[ADC_STK_SIZE];
extern OS_STK COM_TASK_STK[COM_STK_SIZE];
extern OS_STK PRINT_TASK_STK[PRINT_STK_SIZE];
extern OS_STK START_TASK_STK[START_STK_SIZE];
extern OS_STK IDLE_TASK_STK[IDLE_STK_SIZE];
extern OS_STK LASER_TASK_STK[LASER_STK_SIZE];
extern OS_STK SHT20_TASK_STK[SHT20_STK_SIZE];

void start_task(void *pdata);
void led_task(void *pdata);
void print_task(void* pdata);
void dac_task(void* pdata);
void adc_task(void* pdata);
void com_task(void* pdata);
void idle_task(void* pdata);
void laser_task(void* pdata);
void sht20_task(void* pdata);
#endif
