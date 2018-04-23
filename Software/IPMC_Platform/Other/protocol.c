#include "protocol.h"

uint8_t Rx1Buff[20];

uint8_t LengthCal(uint8_t* data)
{
	uint8_t len;
	switch(*data)
	{
		case SLOPE :	len=12;break;
		case SINE  :	len=16;break;
		case PWM   :	len=16;break;
		case DC    :	len=8;break;
		default    : len=0 ;break;
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
		default:DA_OCB.CH=CH0;break;
	}
}

void Data_anysis(uint8_t* buff,uint8_t* channel)
{
	switch(*channel)
		{
    case 0:
      switch(CGroup.DA0.type)
      {
      case SLOPE:
        CGroup.DA0.SLOPE.k=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA0.SLOPE.b=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA0.SLOPE.extreme=(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				WaveCLK0=0;
        break;
      case SINE:
        CGroup.DA0.SINE.amp=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA0.SINE.wfrq=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA0.SINE.pha=(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				CGroup.DA0.SINE.Yoffset=(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				WaveCLK0=0;
        break;
      case PWM:
        CGroup.DA0.PWM.HV   =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA0.PWM.LV   =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA0.PWM.frq  =(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				CGroup.DA0.PWM.duty =(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				WaveCLK0=0;
        break;
      case DC:
        CGroup.DA0.DC =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				WaveCLK0=0;
        break;
      default:break;
      }
      break;
    case 1:
      switch(CGroup.DA1.type)
      {
      case SLOPE:
        CGroup.DA1.SLOPE.k=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA1.SLOPE.b=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA1.SLOPE.extreme=(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				WaveCLK1=0;
        break;
      case SINE:
        CGroup.DA1.SINE.amp=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA1.SINE.wfrq=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA1.SINE.pha=(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				CGroup.DA1.SINE.Yoffset=(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				WaveCLK1=0;
        break;
      case PWM:
        CGroup.DA1.PWM.HV   =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA1.PWM.LV   =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA1.PWM.frq  =(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				CGroup.DA1.PWM.duty =(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				WaveCLK1=0;
        break;
      case DC:
				CGroup.DA1.DC   =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				WaveCLK1=0;
        break;
      default:break;
      }
      break;
    case 2:
      switch(CGroup.DA01.type)
      {
      case SLOPE:
        CGroup.DA01.SLOPE.k=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA01.SLOPE.b=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA01.SLOPE.extreme=(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				WaveCLK0=WaveCLK1=0;
        break;
      case SINE:
        CGroup.DA01.SINE.amp=(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA01.SINE.wfrq=(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA01.SINE.pha=(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				CGroup.DA01.SINE.Yoffset=(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				WaveCLK0=WaveCLK1=0;
        break;
      case PWM:
        CGroup.DA01.PWM.HV   =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA01.PWM.LV   =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA01.PWM.frq  =(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
				CGroup.DA01.PWM.duty =(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
				WaveCLK0=WaveCLK1=0;
        break;
      case DC:
				CGroup.DA0.DC =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
				CGroup.DA1.DC =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
				CGroup.DA0.type = DC;
				CGroup.DA1.type = DC;
				WaveCLK0=WaveCLK1=0;
				CGroup.DA01.DC =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
        break;
      default:break;
      }
      break;
		}
}

void DealUART1Buff(uint8_t* data)
{
	static uint8_t head=0,cnt=0,len=0;
  static uint8_t channel=0;
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
    channel=*data;
	}
	else if(head==4)
	{
		head=5;
    switch(channel)
    {
    case 0:
      CGroup.DA0.type=(WaveType)*data;break;
    case 1:
      CGroup.DA1.type=(WaveType)*data;break;
    case 2:
      CGroup.DA01.type=(WaveType)*data;break;
    default:break;
    }
    len=LengthCal(data);
    cnt=0;
	}
	else if(head==5)
	{
		Rx1Buff[cnt++]=*data;
		if(cnt==len) 
		{
			head=0;
			Data_anysis(Rx1Buff,&channel);
		}
	}
	else head=0;

}

//adcbuf has symbol
void ToPC_ADCData(int32_t adcbuf[],int32_t timestamp0,int32_t timestamp1)
{
  uint8_t buff[26+4]={0};
  uint8_t cnt=0;  
  
  buff[cnt++]=0xAA;//header
  buff[cnt++]=0xAF;
  
  buff[cnt++]=0x00;//function
  buff[cnt++]=0x00;//type
  buff[cnt++]=0x00;//channel
  
  buff[cnt++]=BYTE0(adcbuf[0]);//Current
  buff[cnt++]=BYTE1(adcbuf[0]);
  buff[cnt++]=BYTE2(adcbuf[0]);
  buff[cnt++]=BYTE3(adcbuf[0]);
  
  buff[cnt++]=BYTE0(adcbuf[1]);//Voltage
  buff[cnt++]=BYTE1(adcbuf[1]);
  buff[cnt++]=BYTE2(adcbuf[1]);
  buff[cnt++]=BYTE3(adcbuf[1]);
  
  buff[cnt++]=BYTE0(adcbuf[2]);//Force
  buff[cnt++]=BYTE1(adcbuf[2]);
  buff[cnt++]=BYTE2(adcbuf[2]);
  buff[cnt++]=BYTE3(adcbuf[2]);
  
  buff[cnt++]=0x00;//Displacement
  buff[cnt++]=0x00;
  buff[cnt++]=0x00;
  buff[cnt++]=0x00;
  
  buff[cnt++]=BYTE0(timestamp0);//Time stamp0
  buff[cnt++]=BYTE1(timestamp0);
  buff[cnt++]=BYTE2(timestamp0);
  buff[cnt++]=BYTE3(timestamp0);
  
  buff[cnt++]=BYTE0(timestamp1);//Time stamp1
  buff[cnt++]=BYTE1(timestamp1);
  buff[cnt++]=BYTE2(timestamp1);
  buff[cnt++]=BYTE3(timestamp1);
  
  buff[cnt++]=0x00;//reserved
  
  uint8_t i=0;
  for(i=0;i<cnt;i++)
    printf("%d",buff[i]);
}

void ToPC_WaveData(void)
{
  uint8_t buff[26+4]={0};
  uint8_t cnt=0;  
  
  buff[cnt++]=0xAA;//header
  buff[cnt++]=0xAF;
  
  buff[cnt++]=0x01;//function wavedata
  buff[cnt++]=0x00;//type
  buff[cnt++]=0x00;//channel
  
  buff[cnt++]=CGroup.DA0.type;
	buff[cnt++]=CGroup.DA1.type;
  buff[cnt++]=CGroup.DA01.type;
  
  buff[cnt++]=0x00;//reserved
  
  uint8_t i=0;
  for(i=0;i<cnt;i++)
    printf("%d",buff[i]);
}
