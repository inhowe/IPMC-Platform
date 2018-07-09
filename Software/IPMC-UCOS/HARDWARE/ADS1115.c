#include "ADS1115.h"

ADS1x15_t ADS;
int32_t   ADS_Buff[4];

void ADS1x15_Delay_ms(uint32_t cnt)
{
	uint32_t i=0;
	for(;cnt>0;cnt--)
		for(;i<0x1ff00;i++) ;
}

void ADS1x15_WriteData(uint8_t reg,uint16_t data)
{
	uint8_t ack=0;
	
	IIC_Start();
	IIC_Send_Byte(ADS1115_ADDRESS_W);//Device addr
	ack = IIC_Wait_Ack();if(ack==1){IIC_Stop();/*printf("W1 ");*/}
	IIC_Send_Byte(reg);//Pointer Register
	ack = IIC_Wait_Ack();if(ack==1){IIC_Stop();/*printf("W2 ");*/}
	IIC_Send_Byte((data&0xff00)>>8);//High Byte
	ack = IIC_Wait_Ack();if(ack==1){IIC_Stop();/*printf("W3 ");*/}
	IIC_Send_Byte(data&0x00ff);//Low Byte
	ack = IIC_Wait_Ack();if(ack==1){IIC_Stop();/*printf("W4 ");*/}
	IIC_Stop();
}

uint16_t ADS1x15_ReadData(uint8_t reg)
{
	uint8_t ack;
	uint8_t tmp1=0,tmp2=0;
	
	IIC_Start();
		IIC_Send_Byte(ADS1115_ADDRESS_W);//write point register
		ack = IIC_Wait_Ack();if(ack==1){IIC_Stop();/*printf("R1 ");*/}
		IIC_Send_Byte(reg);
		ack = IIC_Wait_Ack();if(ack==1){IIC_Stop();/*printf("R2 ");*/}
	IIC_Stop();
	
	IIC_Start();
		IIC_Send_Byte(ADS1115_ADDRESS_R);//read data
		ack = IIC_Wait_Ack();if(ack==1){IIC_Stop();/*printf("R3 ");*/}
		tmp1=IIC_Read_Byte(ack);
		IIC_Ack();
		tmp2=IIC_Read_Byte(ack);
		IIC_Ack();
	IIC_Stop();
	
	return (tmp1<<8)|tmp2;
}

//ch-Channel:
//@para:ADS_CH0-ADS_CH3 or ADS_Diff_CH01 or ADS_Diff_CH23
//Channel is not equal to 0-3!
void ADS1x15_Config(adsChannel_t channel)
{
	uint16_t cfgValue=0;
	cfgValue=	 ADS1x15_REG_CONFIG_OS_SINGLE
						|channel
						|ADS1x15_REG_CONFIG_PGA_6_144V
						|ADS1x15_REG_CONFIG_MODE_SINGLE
						|ADS1x15_REG_CONFIG_DR_475SPS
						|ADS1x15_REG_CONFIG_CMODE_TRAD
						|ADS1x15_REG_CONFIG_CPOL_ACTVLOW
						|ADS1x15_REG_CONFIG_CLAT_NONLAT
						|ADS1x15_REG_CONFIG_CQUE_1CONV;
	
	ADS1x15_WriteData(ADS1x15_REG_POINTER_CONFIG,cfgValue);
	
}

void ADS1x15_SelectChannel(adsChannel_t channel)
{
  ADS1x15_Config(channel);
}

int16_t ADS1x15_ReadLastValue(void)
{
	return ADS1x15_ReadData(ADS1x15_REG_POINTER_CONVERT);
}

int16_t ADS1x15_GetValue(adsChannel_t channel)
{
	ADS1x15_Config(channel);
	ADS1x15_Delay_ms(10);
	return ADS1x15_ReadData(ADS1x15_REG_POINTER_CONVERT);
}

void ADS1x15_Init(void)
{
//	IIC_Init();
}

