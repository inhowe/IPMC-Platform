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

typedef struct Wave_DC_e{
	double k;
	double b;
	double F;
}Wave_DC_t;

typedef struct Wave_SINE_e{
	double  amp; 	//amplitude
	double  wfrq;	//angle frequency
	double  pha;	//phase
	double  Yoffset;	//offset of the Y axis
}Wave_SINE_t;

typedef struct Wave_PWM_e{
	double HV;
	double LV;
	double frq;
	double duty;
}Wave_PWM_t;

//Attribute Description Block of WAVE. 
typedef struct WAVE_ADB_s{
	Wave_SINE_t SINE;
	Wave_PWM_t	PWM;	
	Wave_DC_t   DC;
	WaveType 		type;
	DA_CHANNEL_t  CH0;
	DA_CHANNEL_t  CH1;
	DA_CHANNEL_t  CH01;
}WAVE_ADB_t;

extern WAVE_ADB_t WAVE_ADB;

void WaveFunc(void);
void WAVE_ADB_Init(void);

#endif
