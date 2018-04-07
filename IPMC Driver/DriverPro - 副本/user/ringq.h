/*******************************************************************************
* File Name          : RINGQ.h
* Author             : MCD Application Team
* Version            : V2.0.1
* Date               : 06/13/2008
* Description        : Header for i2c_ee.c module
*******************************************************************************/
#ifndef __RINGQ_H__
#define __RINGQ_H__

#ifdef __cplusplus
extern "C" {
#endif 
	
/* Define to prevent recursive inclusion ------------------------------------ */

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_conf.h" 
#include "mpu9250.h"

/* Exported macro ------------------------------------------------------------*/
#define RINGQ_MAX		10


#define ringq_is_empty(q) (q->head == q->tail)
#define ringq_is_full(q) (((q->tail+1)%q->size) == q->head )	
/* Exported types ------------------------------------------------------------*/
typedef struct ringq{
   uint8_t head; //head
   uint8_t tail; //tail 
   uint8_t size ; // size queue
   MPU_value space[RINGQ_MAX]; // queue space  
}RINGQ;		

/* Exported constants --------------------------------------------------------*/

/* Exported functions ------------------------------------------------------- */
uint8_t ringq_init(RINGQ * p_ringq);

uint8_t ringq_free(RINGQ * p_ringq);

int16_t ringq_push(RINGQ * p_ringq, MPU_value* mpu_9250);

int16_t ringq_poll(RINGQ * p_ringq, MPU_value* get_mpu_9250 );


#ifdef __cplusplus
}
#endif 

#endif /* __RINGQ_H__ */


