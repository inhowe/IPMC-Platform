#ifndef __WAVE_H
#define __WAVE_H
#include "stm32f4xx.h"
#include "math.h"
#include "tim.h"
#include "AD5722.h"
//#include "main.h"

typedef enum WaveType_e{
	DC=0,
	SINE=1,
	PWM=2,
}WaveType;

//Attribute Description Block of WAVE. 
typedef struct WAVE_ADB_s{
	double  amp; 	//amplitude
	double  frq;	//frequency
	double  pha;	//phase
	double  Yoffset;	//offset of the Y axis
	double	duty;	//duty cycle of the PWM
	WaveType type;
}WAVE_ADB_t;

extern WAVE_ADB_t WAVE_ADB;

void WaveFunc(void);
void WAVE_ADB_Init(void);

#endif
