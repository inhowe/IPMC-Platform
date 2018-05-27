#include "algorithm.h"

INT16U RefV[4];

void ADCCarlib(void)
{
    static INT8U i=20;
    int D0,D1,D2;
    while(i>0)
    {
        D0+=ADS_Buff[0];
        D1+=ADS_Buff[1];
        D2+=ADS_Buff[2];
        delay_ms(5*4*2);//let OS scheduling
        i--;
    }
    RefV[0]=D0/20;
    RefV[1]=D1/20;
    RefV[2]=0;
}

//4位精度浮点数转ASCII
void myftoa(double data,char str[])
{
	int Int, Dec;
	char strHead[9], strTail[5], pt[] = ".";
	Int = (int)data;
    
	Dec = 10000.0*fabs(data - Int);//要注意-1<data<1时的情况！

	sprintf(strHead, "%03d", Int);//整数部分转字符串
	sprintf(strTail, "%04d", Dec);//小数部分转字符串
	strcat(strHead, pt);//整数字符串后加点
	strcat(strHead, strTail);//再加小数字符串
    
    memset(str,0,strlen(strHead)); //清除str地址起strHead长度的内容
	
    if (strHead[0]=='0')
        strHead[0] = '+';
    if(data<0)
        strHead[0] = '-'; //-0.8取整为0，丢失符号！
    
    strcat(str, strHead);
}
