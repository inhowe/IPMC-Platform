#include "laser.h"

//激光位移
float __IO LaserOffset=0.0;

//发送测量命令
void LaserCMDMessure(void)
{
	unsigned char array[3]={'M','1',0x0D};
	SendData(array,3);
}

//解析收到的测量数据
float LaserBAKMessure(unsigned char array[])
{
    //Data format: M1,+12.3456
    //             0123456789X 
    float data=0;
    
    if(array[0]=='M')
        if(array[1]=='1')
            if(array[2]==',')
            {
                data = (array[4]-'0')*10+array[5]-'0'+
                      ((array[7]-'0')*1000+(array[8]-'0')*100+(array[9]-'0')*10+array[10]-'0')/10000.0;
            }
    if(array[3]=='-')
        data=-data;
    if((int)data==-244) //if out of the range, the data will be -244.4442
        data=Laser_OutOfRange;
    
    LaserOffset = data;
    return data;
}

//当前位移Set to zero
void LaserCMDToZero(void)
{
    unsigned char array[3]={'V','1',0x0D};
	SendData(array,3);
    LaserOffset=0;
}
