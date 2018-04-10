#include "task.h"

bool T_DAC=false;
bool T_DEBUG=false;

void TaskIdle(bool *TaskBit)
{
	if(*TaskBit)
		*TaskBit=false;
}

void TaskInitVariable(void)
{
	WAVE_ADB_Init();
	
	printf("The timebase is %.1f ms. \r\n",84000000.0/htim6.Init.Prescaler/htim6.Init.Period/1000);
	printf("------------------------ \r\n");
}

void TaskDAC(bool *TaskBit)
{
	if(*TaskBit)
	{
		*TaskBit=false;
		WaveFunc();
	}
}

void TaskDebug(bool *TaskBit)
{
	if(*TaskBit)
	{
		*TaskBit=false;
		AD5722_Output(DA_OCB.Value=1.5,DA_OCB.CH=CH0);
//		
//	  printf("Out0:0x%x ",(AD5722_ReadBack(DAC_REG|DAC_A))>>4);
//		printf("Out1:0x%x ",(AD5722_ReadBack(DAC_REG|DAC_B))>>4);
//		
//		printf("C:%4.3fV ",ADS1x15_GetValue(ADS_CH0)/32768.0*6.144);
//		printf("V:%4.3fV ",ADS1x15_GetValue(ADS_CH1)/32768.0*6.144);
//		printf("F:%4.3fV ",ADS1x15_GetValue(ADS_CH2)/32768.0*6.144);
//		printf("G:%4.3fV ",ADS1x15_GetValue(ADS_CH3)/32768.0*6.144);
//		
//		printf("\r\n");
	}
}

