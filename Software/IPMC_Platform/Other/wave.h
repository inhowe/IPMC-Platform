#ifndef __WAVE_H
#define __WAVE_H
#include "stm32f4xx.h"
#include "math.h"
#include "tim.h"
#include "AD5722.h"
//#include "main.h"

typedef enum WaveType_e{
	SLOPE=0,
	SINE=1,
	PWM=2,
	DC=3, 
	UNKNOWN=0xff
}WaveType;

typedef struct Wave_SLOPE_e{
	double k;
	double b;
	double extreme;
}Wave_SLOPE_t;

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
	Wave_SINE_t 	SINE;
	Wave_PWM_t		PWM;	
	Wave_SLOPE_t 	SLOPE;
	double			DC;
	WaveType 		type;
}WAVE_ADB_t;

typedef struct CHANNEL_GROUP_s{
  WAVE_ADB_t DA0;
  WAVE_ADB_t DA1;
  WAVE_ADB_t DA01;
}CHANNEL_GROUP_t;

//extern WAVE_ADB_t WAVE_ADB;
extern CHANNEL_GROUP_t CGroup;
extern double WaveCLK0,WaveCLK1;
void WaveFunc(void);
void Channel_Group_Init(void);

#endif
