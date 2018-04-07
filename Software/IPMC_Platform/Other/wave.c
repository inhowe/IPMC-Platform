#include "wave.h"

WAVE_ADB_t WAVE_ADB={0,0.1,0,0,0,SINE};

void WAVE_ADB_Init(void)
{
	WAVE_ADB.amp=1.0;
	WAVE_ADB.duty=0.5;
	WAVE_ADB.frq=1.0;
	WAVE_ADB.pha=0.0;
	WAVE_ADB.type=DC;
	WAVE_ADB.Yoffset=0.0;
}

void WaveFunc(void)
{
	static double t=0;
	double result=0;
	double w=2*3.1416*WAVE_ADB.frq;
	if(WAVE_ADB.type == SINE)
	{
		result=WAVE_ADB.amp*sin(w*t+WAVE_ADB.pha)+WAVE_ADB.Yoffset;
		AD5722_Output(DA_OCB.Value=result,DA_OCB.CH);
		t=t+0.005;
	}
	else if(WAVE_ADB.type == DC)
	{
		AD5722_Output(DA_OCB.Value=WAVE_ADB.amp,DA_OCB.CH);
	}
	else if(WAVE_ADB.type == PWM)
	{
		
	}
}


