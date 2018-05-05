#ifndef __PROTOCOL_H
#define __PROTOCOL_H

#include "stm32f4xx_hal.h"
#include "main.h"
#include "can.h"
#include "wave.h"
#include "AD5722.h"
#include "usart.h"
#include "queue.h"
#include "includes.h"

#define BYTE0(dwTemp)       (*(char *)(&dwTemp))
#define BYTE1(dwTemp)       (*((char *)(&dwTemp) + 1))
#define BYTE2(dwTemp)       (*((char *)(&dwTemp) + 2))
#define BYTE3(dwTemp)       (*((char *)(&dwTemp) + 3))

void DealQueueBuff(Queue_t* queue);
void ToPC_ADCData(int32_t adcbuf[],int32_t timestamp0,int32_t timestamp1);
void ToPC_WaveData(void);

#endif
