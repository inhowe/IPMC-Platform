#include "protocol.h"

uint8_t Rx1Buff[20];
uint8_t ibuff=0,ican=0;
uint8_t canbuf[8],NbrOfTx=0;
void ToBoard_Transpond(uint8_t* TargetID,uint8_t *channel,uint8_t* type,uint8_t* buff,uint8_t* bufflen)
{	
  CAN1_Handler.pTxMsg->StdId=*TargetID;        //标准标识符
  CAN1_Handler.pTxMsg->ExtId=0;        //扩展标识符(29位)
  CAN1_Handler.pTxMsg->IDE=CAN_ID_STD;    //使用标准帧
  CAN1_Handler.pTxMsg->RTR=CAN_RTR_DATA;  //数据帧
  CAN1_Handler.pTxMsg->DLC=8;
	
  NbrOfTx=(*bufflen+5)/8;
  if((*bufflen+5)%8!=0)
    NbrOfTx++;
  
  CAN1_Handler.pTxMsg->Data[0]=0xAA;
  CAN1_Handler.pTxMsg->Data[1]=0xAA;
  CAN1_Handler.pTxMsg->Data[2]=*TargetID;
  CAN1_Handler.pTxMsg->Data[3]=*channel;
  CAN1_Handler.pTxMsg->Data[4]=*type;
  ibuff=0;
  for(;ibuff+5<8;ibuff++)
  {
    CAN1_Handler.pTxMsg->Data[ibuff+5]=buff[ibuff];
  }
  NbrOfTx--;
  HAL_CAN_Transmit(&CAN1_Handler,10);
  
  while(NbrOfTx)
  {
    for(ican=0;ican<8;ican++)
    {
      if(ibuff<*bufflen)
        CAN1_Handler.pTxMsg->Data[ican]=buff[ibuff++];
      else
        CAN1_Handler.pTxMsg->Data[ican]=0;
    }
    NbrOfTx--;
	HAL_CAN_Transmit(&CAN1_Handler,10);
  }
}

uint8_t LengthCal(uint8_t* data)
{
  uint8_t len;
  switch(*data)
  {
    case SLOPE :    len=12;break;
    case SINE  :    len=16;break;
    case PWM   :	len=16;break;
    case DC    :	len=8;break;
    case 0x55  :    len=6;break; //carlib cmd
    default    :    len=0 ;break;
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
      CGroup.DA0.SLOPE.k        =CGroup.DA1.SLOPE.k         =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
      CGroup.DA0.SLOPE.b        =CGroup.DA1.SLOPE.b         =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
      CGroup.DA0.SLOPE.extreme  =CGroup.DA1.SLOPE.extreme   =(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
      CGroup.DA0.type = CGroup.DA1.type = SLOPE;
      WaveCLK0=WaveCLK1=0;
      break;
    case SINE:
      CGroup.DA0.SINE.amp    =CGroup.DA1.SINE.amp     =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
      CGroup.DA0.SINE.wfrq   =CGroup.DA1.SINE.wfrq    =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
      CGroup.DA0.SINE.pha    =CGroup.DA1.SINE.pha     =(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
      CGroup.DA0.SINE.Yoffset=CGroup.DA1.SINE.Yoffset =(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
      CGroup.DA0.type = CGroup.DA1.type = SINE;
      WaveCLK0=WaveCLK1=0;
      break;
    case PWM:
      CGroup.DA0.PWM.HV   =CGroup.DA1.PWM.HV   =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
      CGroup.DA0.PWM.LV   =CGroup.DA1.PWM.LV   =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
      CGroup.DA0.PWM.frq  =CGroup.DA1.PWM.frq  =(double)((buff[8]<<24)+(buff[9]<<16)+(buff[10]<<8)+buff[11])/100.0;
      CGroup.DA0.PWM.duty =CGroup.DA1.PWM.duty =(double)((buff[12]<<24)+(buff[13]<<16)+(buff[14]<<8)+buff[15])/100.0;
      CGroup.DA0.type = CGroup.DA1.type = PWM;
      WaveCLK0=WaveCLK1=0;
      break;
    case DC:
      CGroup.DA0.DC =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
      CGroup.DA1.DC =(double)((buff[4]<<24)+(buff[5]<<16)+(buff[6]<<8)+buff[7])/100.0;
      CGroup.DA0.type = DC;
      CGroup.DA1.type = DC;
      WaveCLK0=WaveCLK1=0;
      //CGroup.DA01.DC =(double)((buff[0]<<24)+(buff[1]<<16)+(buff[2]<<8)+buff[3])/100.0;
      break;
    default:break;
    }
    break;
  case 0x55:
    if(buff[0]=='C'&&buff[1]=='A'&&buff[2]=='R'&&buff[3]=='L'&&buff[4]=='I'&&buff[5]=='B')  
    {
        Carlib();
    }
    break;
  }
}

void DealQueueBuff(Queue_t* queue)
{
  static uint8_t head=0,cnt=0;
  static uint8_t channel=0,len=0,type=0;
  static uint8_t TargetID;
  while(Queue_Dequeue(queue))
  {
    if(head==0&&queue->DequeueData==0xAA)
    {
      head=1;
    }
    else if(head==1&&queue->DequeueData==0xAA)
    {
      head=2;
    }
    else if(head==2)
    {
      head=3;
      TargetID=queue->DequeueData;
    }
    else if(head==3)
    {
      head=4;
      channel=queue->DequeueData;
    }
    else if(head==4)
    {
      head=5;
      if(TargetID==BoardID)
      {
        switch(channel)
        {
        case 0:
          CGroup.DA0.type=(WaveType)queue->DequeueData;break;
        case 1:
          CGroup.DA1.type=(WaveType)queue->DequeueData;break;
        case 2:
          CGroup.DA01.type=(WaveType)queue->DequeueData;break;
        case 0x55:break;
        default:break;
        }
      }
      else
        type=queue->DequeueData;
      
      len=LengthCal(&(queue->DequeueData));
      cnt=0;
    }
    else if(head==5)
    {
      Rx1Buff[cnt++]=queue->DequeueData;
      if(cnt==len) 
      {
        head=0;
        if(TargetID==BoardID)
          Data_anysis(Rx1Buff,&channel);
        else
          ToBoard_Transpond(&TargetID,&channel,&type,Rx1Buff,&len);
      }
    }
    else head=0;
  }
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


