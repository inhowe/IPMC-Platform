#ifndef __AD5722_H
#define __AD5722_H

#include "stm32f4xx_hal.h"
#include <stdbool.h>

#define AD5722_DO_STATE	HAL_GPIO_ReadPin(DA_DO_GPIO_Port,DA_DO_Pin)

#define AD5722_DI_H 		HAL_GPIO_WritePin(DA_DI_GPIO_Port,DA_DI_Pin,GPIO_PIN_SET);
#define AD5722_DI_L 		HAL_GPIO_WritePin(DA_DI_GPIO_Port,DA_DI_Pin,GPIO_PIN_RESET);

#define AD5722_SCK_H 		HAL_GPIO_WritePin(DA_SCK_GPIO_Port,DA_SCK_Pin,GPIO_PIN_SET);
#define AD5722_SCK_L 		HAL_GPIO_WritePin(DA_SCK_GPIO_Port,DA_SCK_Pin,GPIO_PIN_RESET);

#define AD5722_SYNC_H 	HAL_GPIO_WritePin(DA_SYNC_GPIO_Port,DA_SYNC_Pin,GPIO_PIN_SET);
#define AD5722_SYNC_L 	HAL_GPIO_WritePin(DA_SYNC_GPIO_Port,DA_SYNC_Pin,GPIO_PIN_RESET);

#define AD5722_LDAC_H 	HAL_GPIO_WritePin(DA_LDAC_GPIO_Port,DA_LDAC_Pin,GPIO_PIN_SET);
#define AD5722_LDAC_L 	HAL_GPIO_WritePin(DA_LDAC_GPIO_Port,DA_LDAC_Pin,GPIO_PIN_RESET);

#define AD5722_CLR_H		HAL_GPIO_WritePin(DA_CLR_GPIO_Port,DA_CLR_Pin,GPIO_PIN_SET);
#define AD5722_CLR_L 		HAL_GPIO_WritePin(DA_CLR_GPIO_Port,DA_CLR_Pin,GPIO_PIN_RESET);

#define AD5722_START_SYNC		AD5722_SYNC_L
#define AD5722_RESET_SYNC		AD5722_SYNC_H

//Bit Mask of input shift register
#define DA_WRITE 0x000000
#define DA_READ  0x800000

//Related register
#define DAC_REG 	0x000000
#define RANGE_REG 0x080000
#define PWR_REG		0x100000
#define CTR_REG		0x180000

//DAC Address bit
#define DAC_A			0x000000
#define DAC_B			0x020000
#define DAC_AB		0x040000

//Power Register bit 
#define PWRON_CHA 0x01
#define PWRON_CHB 0x04
#define TSD_ALERT 0x20  //read-only bit,Thermal Shutdown Alert
#define OCA_ALERT 0x80  //read-only bit,DAC A overcurrent alert
#define OCB_ALERT 0x200 //read-only bit,DAC B overcurrent alert

//Control Register bit
#define CTR_NOP 	0x00000
#define CTR_OTHER 0x10000
#define CTR_CLEAR	0x40000
#define CTR_LOAD	0x50000

//ignore

typedef enum DA_RANGE_e{
	UNIPOLAR5V = 0,
	UNIPOLAR10V,
	UNIPOLAR10_8V,
	BIPOLAR5V,
	BIPOLAR10V,
	BIPOLAR10_8V
}DA_RANGE_t;

typedef enum DA_CHANNEL_e{
	CH0=DAC_A,
	CH1=DAC_B,
	CH01=DAC_AB
}DA_CHANNEL_t;

typedef enum DA_CODETYPE_e{
	BIN,//binary 
	TWOsCOMP //two s complement
}DA_CODETYPE_t;

/*Output Control Block*/
struct AD5722_OCB_s{
	double      	Value;
	DA_CHANNEL_t  CH;
	DA_RANGE_t 	  Range;
//	enum DA_CODETYPE CodeType;
};

extern struct AD5722_OCB_s DA_OCB;

void AD5722_Init(void);
void AD5722_Output(double value,DA_CHANNEL_t channel);
void AD5722_SetRange(void);
uint32_t AD5722_ReadBack(uint32_t addr);
void AD5722_Test(void);

#endif
