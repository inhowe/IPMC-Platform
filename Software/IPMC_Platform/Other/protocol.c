#include "protocol.h"

uint8_t TypeSelect(uint8_t* data)
{
	uint8_t len;
	switch(*data)
	{
		case DC  :WAVE_ADB.type = DC  ;len=12;break;
		case SINE:WAVE_ADB.type = SINE;len=16;break;
		case PWM :WAVE_ADB.type = PWM ;len=16;break;
	}
	return len;
}

void ChannelSelect(uint8_t* data)
{
	switch(*data)
	{
		case 0:DA_OCB.CH=CH0; break;
		case 1:DA_OCB.CH=CH1; break;
		case 2:DA_OCB.CH=CH01; break;
	}
}

void Data_anysis(uint8_t* buff)
{
	switch(WAVE_ADB.type)
		{
			case DC:
				WAVE_ADB.DC.k=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				WAVE_ADB.DC.b=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				break;
			case SINE:
				WAVE_ADB.SINE.amp=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				WAVE_ADB.SINE.wfrq=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				WAVE_ADB.SINE.pha=(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				WAVE_ADB.SINE.Yoffset=(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				break;
			case PWM :
				WAVE_ADB.PWM.HV   =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				WAVE_ADB.PWM.LV   =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				WAVE_ADB.PWM.frq  =(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				WAVE_ADB.PWM.duty =(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				break;
		}
}

void DealUART1Buff(uint8_t* data)
{
	static uint8_t head=0,cnt=0,len=0;
	static uint8_t Rx1Buff[16];
	if(head==0&&(*data)==0xAA)
	{
		head=1;
	}
	else if(head==1&&(*data)==0xAA)
	{
		head=2;
	}
	else if(head==2)
	{
		head=3;
	}
	else if(head==3)
	{
		head=4;
		len=TypeSelect(data);
	}
	else if(head==4)
	{
		head=5;
		cnt=0;
		ChannelSelect(data);
	}
	else if(head==5)
	{
		Rx1Buff[cnt++]=*data;
		if(cnt==len) 
		{
			head=0;
			Data_anysis(Rx1Buff);
		}
	}
	else head=0;

}

