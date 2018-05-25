#include "wave.h"

//WAVE_ADB_t WAVE_ADB={0};
CHANNEL_GROUP_t CGroup={0};
double WaveCLK0=0,WaveCLK1=0;

void Channel_Group_Init(void)
{
    CGroup.DA0.type=DC;
    CGroup.DA1.type=DC;
    CGroup.DA0.DC = 0;
    CGroup.DA0.DC = 0;
}

void WaveFunc(void)
{
  double result=0;
  double T,posT;
  switch(CGroup.DA0.type)
  {
  case SLOPE:
    result=CGroup.DA0.SLOPE.k*WaveCLK0+CGroup.DA0.SLOPE.b;
    if( fabs(result) > fabs(CGroup.DA0.SLOPE.extreme) )
      result=CGroup.DA0.SLOPE.extreme;
    AD5722_Output(result,CH0);
    WaveCLK0=WaveCLK0+0.001;break;
  case SINE:
    result=CGroup.DA0.SINE.amp * sin(CGroup.DA0.SINE.wfrq*WaveCLK0+CGroup.DA0.SINE.pha) + CGroup.DA0.SINE.Yoffset;
    AD5722_Output(result,CH0);
    WaveCLK0=WaveCLK0+0.001;break;
  case PWM:
    T=1/CGroup.DA0.PWM.frq;
    posT=CGroup.DA0.PWM.duty*T; //zhengzhouqi
    if( (WaveCLK0-((uint32_t)(WaveCLK0/T))*T) < posT ) //kan yushu shifou xiaoyu zhengzhouqi 
      AD5722_Output(CGroup.DA0.PWM.HV,CH0);
    else
      AD5722_Output(CGroup.DA0.PWM.LV,CH0);
    WaveCLK0=WaveCLK0+0.001;break;
  case DC:
    AD5722_Output(CGroup.DA0.DC,CH0);
    WaveCLK0=WaveCLK0+0.001;break;
  case UNKNOWN:
    WaveCLK0=WaveCLK0+0.001;break;
  }
  
  switch(CGroup.DA1.type)
  {
  case SLOPE:
    result=CGroup.DA1.SLOPE.k*WaveCLK1+CGroup.DA1.SLOPE.b;
    if( fabs(result) > fabs(CGroup.DA1.SLOPE.extreme) )
      result=CGroup.DA1.SLOPE.extreme;
    AD5722_Output(result,CH1);
    WaveCLK1=WaveCLK1+0.001;break;
  case SINE:
    result=CGroup.DA1.SINE.amp * sin(CGroup.DA1.SINE.wfrq*WaveCLK1+CGroup.DA1.SINE.pha) + CGroup.DA1.SINE.Yoffset;
    AD5722_Output(result,CH1);
    WaveCLK1=WaveCLK1+0.001;break;
  case PWM:
    T=1/CGroup.DA1.PWM.frq;
    posT=CGroup.DA1.PWM.duty*T; //zhengzhouqi
    if( (WaveCLK1-((uint32_t)(WaveCLK1/T))*T) < posT ) //kan yushu shifou xiaoyu zhengzhouqi 
      AD5722_Output(CGroup.DA1.PWM.HV,CH1);
    else
      AD5722_Output(CGroup.DA1.PWM.LV,CH1);
    WaveCLK1=WaveCLK1+0.001;break;
  case DC:
    AD5722_Output(CGroup.DA1.DC,CH1);
    WaveCLK1=WaveCLK1+0.001;break;
  case UNKNOWN:
    WaveCLK1=WaveCLK1+0.001;break;
  }
}


