#include "wave.h"

WAVE_ADB_t WAVE_ADB={0};

void WAVE_ADB_Init(void)
{
	WAVE_ADB.type=DC;
	WAVE_ADB.DC.b=0;
	WAVE_ADB.DC.k=0;
}

void WaveFunc(void)
{
	static double t=0;
	double result=0;
	double T,posT;
	if(WAVE_ADB.type == SINE)
	{
		result=WAVE_ADB.SINE.amp * sin(WAVE_ADB.SINE.wfrq*t+WAVE_ADB.SINE.pha) + WAVE_ADB.SINE.Yoffset;
		AD5722_Output(DA_OCB.Value=result,DA_OCB.CH);
		t=t+0.005;
	}
	else if(WAVE_ADB.type == DC)
	{
		result=WAVE_ADB.DC.k*t+WAVE_ADB.DC.b;
		AD5722_Output(DA_OCB.Value=result,DA_OCB.CH);
		t=t+0.005;
	}
	else if(WAVE_ADB.type == PWM)
	{
		T=1/WAVE_ADB.PWM.frq;
		posT=WAVE_ADB.PWM.duty*T; //zhengzhouqi
		if( (t-((uint32_t)(t/T))*T) < posT ) //kan yushu shifou xiaoyu zhengzhouqi 
			AD5722_Output(DA_OCB.Value=WAVE_ADB.PWM.HV,DA_OCB.CH);
		else
			AD5722_Output(DA_OCB.Value=WAVE_ADB.PWM.LV,DA_OCB.CH);
		t=t+0.005;
	}
}


