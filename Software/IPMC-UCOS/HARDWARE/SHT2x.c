#include "SHT2x.h"
#include "delay.h"
#include "myiic.h"
#include<stdio.h>

SHT2x_data SHT20;

void SHT2X_Delay_ms(u16 cnt)
{
	delay_ms(cnt);
}

u8 SHT2x_Init(void)
{
	u8 err;
   IIC_Init();
   err = SHT2x_SoftReset();
	return err;
}

u8 SHT2x_SoftReset(void) //SHT20软件复位
{
	u8 err=0;
	IIC_Start();
  IIC_Send_Byte(0x80);
	err = IIC_Wait_Ack();
	IIC_Send_Byte(0xFE);
	err = IIC_Wait_Ack();
	IIC_Stop();
	return err;
}
float SHT2x_GetTempPoll(void)
{
    double TEMP;
    u8 ack, tmp1, tmp2;
    u16 ST;
    u16 i=0;
    IIC_Start();				//发送IIC开始信号
    IIC_Send_Byte(I2C_ADR_W);			//IIC发送一个字节 
		ack = IIC_Wait_Ack();	
		IIC_Send_Byte(TRIG_TEMP_MEASUREMENT_POLL);
		ack = IIC_Wait_Ack();

    do{
        SHT2X_Delay_ms(10);               
        IIC_Start();				//发送IIC开始信号
        IIC_Send_Byte(I2C_ADR_R);	
			  i++;
			  ack = IIC_Wait_Ack();
			  if(i==100)break;
    } while(ack!=0);
    tmp1 = IIC_Read_Byte(1);
    tmp2 = IIC_Read_Byte(1);
		IIC_Read_Byte(0);
    IIC_Stop();
    
    ST = (tmp1 << 8) | (tmp2 << 0);
	
    ST &= ~0x0003;
    TEMP = ((double)ST * 0.00268127) - 46.85;

    return (float)(TEMP);	  
}

float SHT2x_GetHumiPoll(void)
{
    double HUMI;
    u8 ack, tmp1, tmp2;
    u16 SRH;
		u16 i=0;
    
    IIC_Start();				//发送IIC开始信号
    IIC_Send_Byte(I2C_ADR_W);			//IIC发送一个字节 
		ack = IIC_Wait_Ack();	
		IIC_Send_Byte(TRIG_HUMI_MEASUREMENT_POLL);
		ack = IIC_Wait_Ack();    
    do {
       SHT2X_Delay_ms(10);               
        IIC_Start();				//发送IIC开始信号
        IIC_Send_Byte(I2C_ADR_R);	
			  i++;
			  ack = IIC_Wait_Ack();
			  if(i==100)break;
    } while(ack!=0);
    
    tmp1 = IIC_Read_Byte(1);
   
    tmp2 = IIC_Read_Byte(1);
    IIC_Read_Byte(0);
    IIC_Stop();
    
    SRH = (tmp1 << 8) | (tmp2 << 0);
    SRH &= ~0x0003;
    HUMI = ((double)SRH * 0.00190735) - 6;

    return (float)(HUMI);
}


