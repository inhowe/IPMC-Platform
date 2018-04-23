#include "task.h"

bool T_DAC=false;
bool T_ADC=false;
bool T_ToPC=false;
bool T_DEBUG=false;

void TaskIdle(bool *TaskBit)
{
	if(*TaskBit)
	{
		*TaskBit=false;
		AD5722_Output(0,CH0);
	}
}

void TaskToPC(bool *TaskBit)
{
	if(*TaskBit)
	{
		*TaskBit=false;
		ToPC_ADCData(ADS_Buff,(int)(WaveCLK0*100),(int)(WaveCLK1*100));
	}
}

void TaskInitVariable(void)
{
	Channel_Group_Init();
	
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

void TaskADC(bool *TaskBit)
{
  static uint8_t state=0;
	if(*TaskBit)
	{
		*TaskBit=false;
		switch(state)
    {
      case 0:
        ADS_Buff[0]=ADS1x15_ReadLastValue();
        ADS1x15_SelectChannel(ADS_CH1);
        break;
      case 1:
        ADS_Buff[1]=ADS1x15_ReadLastValue();
        ADS1x15_SelectChannel(ADS_CH2);
        break;
      case 2:
        ADS_Buff[2]=ADS1x15_ReadLastValue();
        ADS1x15_SelectChannel(ADS_CH3);
        break;
      case 3:
        ADS_Buff[3]=ADS1x15_ReadLastValue();
        ADS1x15_SelectChannel(ADS_CH0);
        break;
    default:break;
    }
    state++;
    if(state==4)state=0;
	}
}

void TaskDebug(bool *TaskBit)
{
	if(*TaskBit)
	{
		*TaskBit=false;
	
			// seem to impact the data register
//	  printf("Out0:0x%x ",(AD5722_ReadBack(DAC_REG|DAC_A))>>4);
//		printf("Out1:0x%x ",(AD5722_ReadBack(DAC_REG|DAC_B))>>4);
		
		printf("C:%4.3fV ",ADS_Buff[0]/32768.0*6.144);
		printf("V:%4.3fV ",ADS_Buff[1]/32768.0*6.144);
		printf("F:%4.3fV ",ADS_Buff[2]/32768.0*6.144);
		printf("G:%4.3fV ",ADS_Buff[3]/32768.0*6.144);

		printf("\r\n");
	}
}

