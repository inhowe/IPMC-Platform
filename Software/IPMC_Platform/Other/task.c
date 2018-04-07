#include "task.h"

void TaskIdle(bool *TimeBit)
{
	if(*TimeBit)
		*TimeBit=false;
}

void TaskInitVariable(void)
{
	WAVE_ADB_Init();
	
	printf("The timebase is %.1f ms. \r\n",84000000.0/htim6.Init.Prescaler/htim6.Init.Period/1000);
	printf("------------------------ \r\n");
}

void TaskDAC(bool *TimeBit)
{
	if(*TimeBit)
	{
		*TimeBit=false;
		WaveFunc();
	}
}

void TaskDebug(bool *TimeBit)
{
	if(*TimeBit)
	{
		*TimeBit=false;
		if(DA_OCB.CH==CH0)printf("DA0 ");
		else if(DA_OCB.CH==CH1)printf("DA1 ");
		else if(DA_OCB.CH==CH01)printf("DA01 ");
		printf("Amp:%.2f Frq:%.2f Yoff:%.2f Duty:%.2f ",WAVE_ADB.amp,WAVE_ADB.frq,WAVE_ADB.Yoffset,WAVE_ADB.duty);
		if(WAVE_ADB.type==SINE)printf("Typ:S ");
		else if(WAVE_ADB.type==DC)  printf("Typ:D ");
		else if(WAVE_ADB.type==PWM) printf("Typ:P ");
	  printf("Out0:%d ",(AD5722_ReadBack(DAC_REG|DAC_A))>>4);
		printf("Out1:%d ",(AD5722_ReadBack(DAC_REG|DAC_B))>>4);
		
		printf("C:%4.3fV ",ADS1x15_GetValue(ADS_CH0)/32768.0*6.144);
		printf("V:%4.3fV ",ADS1x15_GetValue(ADS_CH1)/32768.0*6.144);
		printf("F:%4.3fV ",ADS1x15_GetValue(ADS_CH2)/32768.0*6.144);
		printf("G:%4.3fV ",ADS1x15_GetValue(ADS_CH3)/32768.0*6.144);
		
		printf("\r\n");
	}
}

