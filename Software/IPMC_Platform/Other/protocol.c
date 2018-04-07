#include "protocol.h"

void DealUART1Buff(uint8_t* data)
{
	static uint8_t head2=0;
  static uint8_t frqI,frqD,phaI,phaD,dutyI,dutyD;
	static double ampP,ampN;
	if(head2<2 && *data == 0xAA) 
	{
		head2++;
		return ;
	}
	if(head2>=2)
	{
		switch((head2++)-1)
		{
			case 1:	if(*data==0x00)
								DA_OCB.CH=CH0;
							if(*data==0x01)
								DA_OCB.CH=CH1;
							if(*data==0x02)
								DA_OCB.CH=CH01;
							break;
			case 2:	WAVE_ADB.type=(WaveType)*data;
							break;
			case 3:	ampP=*data/16*10+*data%16; //bcd decode
							if(ampP>11)ampP=10.8;
							break;
			case 4:	ampN=*data/16*10+*data%16;
							if(ampN>11)ampN=10.8;
							WAVE_ADB.amp = (ampP+ampN)/2.0 ;
							WAVE_ADB.Yoffset = ampP-WAVE_ADB.amp;
							break;
			case 5:	frqI=*data/16*10+*data%16;
							break;
			case 6:	frqD=*data;
							WAVE_ADB.frq = frqI+frqD/16/10.0+frqD%16/100.0 ;
							if(WAVE_ADB.frq==0.0) WAVE_ADB.type = DC ;
							if(WAVE_ADB.type==DC) WAVE_ADB.frq  = 0 ;
							break;
			case 7:	phaI=*data/16*10+*data%16;
							break;
			case 8:	phaD=*data;
							WAVE_ADB.pha = phaI+phaD/16/10.0+phaD%16/100.0 ;
							break;
			case 9:	dutyI=*data/16*10+*data%16;
							break;
			case 10:dutyD=*data;
							WAVE_ADB.pha = dutyI+dutyD/16/10.0+dutyD%16/100.0 ;
							head2=0;
							break;
			default:head2=0;break;
		}
	}
}
