#include "queue.h"

////队列
//uint8_t Queue[Queue_SIZE]={0};	
//队列状态指示
Queue_t QueueExample;
Queue_t UART_RXqueue;
Queue_t CAN_RXqueue;

void Queue_Init(Queue_t* QueueVariable)
{
	QueueVariable->head =QueueVariable->Buff;
	QueueVariable->tail =QueueVariable->Buff;
	QueueVariable->LLimit =QueueVariable->Buff;
	QueueVariable->ULimit =QueueVariable->Buff+(Queue_SIZE-1);
	QueueVariable->state  = EMPTY;
}

//enqueue success if return true.
bool Queue_Enqueue(Queue_t* QueueVariable,uint8_t data)
{
  if(QueueVariable->state != FULL)
  {
    if(QueueVariable->state == EMPTY) 
      QueueVariable->state = FILLING;
    
    *(QueueVariable->tail++)=data;
    
    if(QueueVariable->tail>QueueVariable->ULimit) 
      QueueVariable->tail=QueueVariable->LLimit;
    if(QueueVariable->tail == QueueVariable->head && QueueVariable->state == FILLING) 
      QueueVariable->state = FULL;
    return true;
  }
  else
    return false;
}

//dequeue success if return true;
bool Queue_Dequeue(Queue_t* QueueVariable)
{
  if(QueueVariable->state != EMPTY)
  {
    QueueVariable->DequeueData =*(QueueVariable->head++);//dequeue
    if(QueueVariable->state == FULL) QueueVariable->state=FILLING;
    if(QueueVariable->head>QueueVariable->ULimit)
      QueueVariable->head=QueueVariable->LLimit;
    if(QueueVariable->head==QueueVariable->tail &&QueueVariable->state==FILLING){
      QueueVariable->state = EMPTY;
    }
    return true;
  }
  else {
    return false;
  }
}


