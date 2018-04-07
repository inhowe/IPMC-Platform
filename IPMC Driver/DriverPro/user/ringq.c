/*******************************************************************************
* File Name          : ringq.c
* Author             : Appcat
* Version            : V0.0.1
* Date               : 07/11/2009
* Description        : This file provides a set of functions needed to manage the
*                      communication between I2C peripheral and I2C FM24CL16 FRAM.
*******************************************************************************/

	
/* Includes ------------------------------------------------------------------*/
#include "mpu9250.h"
#include "ringq.h"

/* Private typedef -----------------------------------------------------------*/

/* Private define ------------------------------------------------------------*/

//#define FRAM_ADDRESS	0xA1
//SCL-PA8;SDA-PC9

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/

/* Private function prototypes -----------------------------------------------*/


/*******************************************************************************
* Function Name  : 
* Description    : 
* Input          : 
* Output         : None
* Return         : None
*******************************************************************************/
uint8_t ringq_init(RINGQ * p_ringq)
{
	p_ringq->head = 0;
	p_ringq->tail = 0;
	p_ringq->size = RINGQ_MAX;
	
	return p_ringq->size;
}

uint8_t ringq_free(RINGQ * p_ringq)
{
	return ringq_init(p_ringq);
}

int16_t ringq_push(RINGQ * p_ringq, MPU_value* mpu_9250)
{
	if(ringq_is_full(p_ringq))
	{
		return -1;
	}
	
	p_ringq->space[p_ringq->tail] = *mpu_9250;
	p_ringq->tail = (p_ringq->tail+1)%p_ringq->size;
	
	return p_ringq->tail;
}

int16_t ringq_poll(RINGQ * p_ringq, MPU_value* get_mpu_9250 )
{
	if(ringq_is_empty(p_ringq))
	{
		return -1;
	}
	
	*get_mpu_9250 = p_ringq->space[p_ringq->head];
	p_ringq->head = (p_ringq->head+1)%p_ringq->size;
	
	return p_ringq->head;	
}

