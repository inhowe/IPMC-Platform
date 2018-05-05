#ifndef __MSP_QUEUE_H
#define __MSP_QUEUE_H

#include "stm32f4xx.h"
#include "stdbool.h"

#define Queue_SIZE 64

typedef enum{
  EMPTY=0,
  FILLING=1,
  FULL=2
}QueueState;

typedef struct Queue_s{
  uint8_t *head;
  uint8_t *tail;
  uint8_t *ULimit;//上限 upper
  uint8_t *LLimit;//下限 lower
  uint8_t Buff[Queue_SIZE];
  uint8_t DequeueData;//
  QueueState state;
}Queue_t;

//extern uint8_t Queue[Queue_SIZE];
extern Queue_t QueueExample;
extern Queue_t UART_RXqueue;
extern Queue_t CAN_RXqueue;

void Queue_Init(Queue_t* QueueVariable);
bool Queue_Enqueue(Queue_t* QueueVariable,uint8_t data);
bool Queue_Dequeue(Queue_t* QueueVariable);
#endif

