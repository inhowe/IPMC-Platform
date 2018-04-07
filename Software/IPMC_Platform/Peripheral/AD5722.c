/**
  ******************************************************************************
  * @file           : AD5722.c
  * @brief          : DA Converter
  ******************************************************************************
  * Warning:
	*         1. This file is only suitable for the bipolar output range.
  *         2. The code type is only based on binary while AD5722 support binary
               and two's complement.
  ******************************************************************************
  */

#include "AD5722.h"

struct AD5722_OCB_s DA_OCB={0,CH01,UNIPOLAR5V};

#define DELAYCONST 60

void AD5722_Delay_ns(uint32_t t)
{
	while(t--)
		;
}

/* load input data to output register directly */
void AD5722_AlwaysLoadDAC(void)
{
	AD5722_LDAC_L;
	AD5722_Delay_ns(DELAYCONST);
}

/* Clear the Out Value of the Channel */
void AD5722_ClearOutValue(void)
{
	AD5722_CLR_H;
	AD5722_CLR_L;
	AD5722_Delay_ns(DELAYCONST);// t>20ns
	AD5722_CLR_H;
}

/* Send data to AD5722 */
/* @example data=R/Wbit|REGbit|Channelbit|Databit */
void AD5722_SendData(uint32_t data)
{
	uint8_t i;
	
//	printf("SendData:0x%x \r\n",data);
	AD5722_START_SYNC;
	AD5722_SCK_H;
	
	AD5722_Delay_ns(DELAYCONST);
	for(i=0;i<24;i++)
	{
		AD5722_SCK_H;
		AD5722_Delay_ns(DELAYCONST);
		
		if(data&0x00800000)
		{ 
			AD5722_DI_H; 
		}
		else
		{ 
			AD5722_DI_L; 
		}
		AD5722_Delay_ns(DELAYCONST);
		
		AD5722_SCK_L;
		AD5722_Delay_ns(DELAYCONST);
		
		data=data<<1;
	}
	AD5722_RESET_SYNC;
}

uint32_t AD5722_ReadData(void)
{
	uint8_t i;
	uint32_t data=0;
	AD5722_RESET_SYNC;
	AD5722_Delay_ns(0xff);
	
	AD5722_START_SYNC;
	AD5722_SCK_H;
	AD5722_Delay_ns(DELAYCONST);
	
	for(i=0;i<24;i++)
	{
		AD5722_SCK_L;
		AD5722_Delay_ns(DELAYCONST);
		
		if(AD5722_DO_STATE)
		{ 
			data++; 
		}
		AD5722_Delay_ns(DELAYCONST);
		
		AD5722_SCK_H;
		AD5722_Delay_ns(DELAYCONST);
		
		if(i<23) data=data<<1;
	}
	AD5722_RESET_SYNC;
	return data;
}

/* 
	Transfer data to standard code.
  This only applied to binary code!
*/
uint16_t AD5722_DataFormatTransfer(double value)
{
	bool Negtive=0;
	double gain;
	double const ref=2.5;
	uint16_t coe=0;
	uint16_t tmp=0;
	
	if(value<0)
	{
		value=-value;
		Negtive=1;
	}
	
	if(DA_OCB.Range==UNIPOLAR5V||DA_OCB.Range==BIPOLAR5V) gain=2;
	else if(DA_OCB.Range==UNIPOLAR10V||DA_OCB.Range==BIPOLAR10V) gain=4;
	else if(DA_OCB.Range==UNIPOLAR10_8V||DA_OCB.Range==BIPOLAR10_8V) gain=4.32;
	
	if(DA_OCB.Range==UNIPOLAR5V||DA_OCB.Range==UNIPOLAR10V||DA_OCB.Range==UNIPOLAR10_8V)
		coe=0x1000;
	else
		coe=0x800;
	
	tmp = (uint16_t)(value*coe/ref/gain+0.5) ;
	
	if(Negtive)
		tmp = coe - tmp ;
	else 
		tmp = coe + tmp ;
	
	tmp=tmp<<4; //the value format is 16bit, AD5722 use the high 12bit.
	
	return tmp;
}

/* Set the output range of AD5722. 
   @para: range = UNIPOLAR5V~BIPOLAR10_8V */
void AD5722_SetRange(void)
{
	AD5722_SendData(DA_WRITE|RANGE_REG|DAC_AB|DA_OCB.Range);
}

/* 
		output volgate value on the selected channel 
   @param: RangeMAX < value < RangeMAX  
           channel = CHA or CHB
*/
void AD5722_Output(double value,DA_CHANNEL_t channel)
{
	uint16_t data=0;
	
	data=AD5722_DataFormatTransfer(value);
	AD5722_SendData(DA_WRITE|DAC_REG|channel|data);
}

/* Config the default operation mode */
/* This fun don't initilize the GPIO */
void AD5722_Init(void)
{
	//GPIO Initilization has been finished firstly.
	
	
	AD5722_RESET_SYNC;
	AD5722_AlwaysLoadDAC();
	AD5722_ClearOutValue();
	
	//Select output range.
	DA_OCB.Range = BIPOLAR5V  ;
	AD5722_SetRange();
	
	//Power on the A,B Channel.
	AD5722_SendData(DA_WRITE|PWR_REG|PWRON_CHA|PWRON_CHB);
  HAL_Delay(1);
	
	//Output a init value (may be covered by WAVE_ADB_Init)
	DA_OCB.Value=1;
	DA_OCB.CH=CH01;
	AD5722_Output(DA_OCB.Value,DA_OCB.CH);
}

/* Read back the register data 
   @param: addr = DAC_REG, RANGE_REG, PWR_REG or CTR_REG */
uint32_t AD5722_ReadBack(uint32_t addr)
{
	addr = addr | DA_READ;
	AD5722_SendData(addr);
	HAL_Delay(1);
	return AD5722_ReadData();
}

void AD5722_Test(void)
{
//	AD5722_SendData(0x0AAA0); //ch0=1.665
//	while(1);
//	AD5722_SendData(0x2AAA0); //ch1=1.665
//	while(1);
//	AD5722_SendData(0x4AAA0); //both=1.665
//	while(1);
}

