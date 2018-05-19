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
	Dec = 10000.0*fabs(data - Int);

	sprintf(strHead, "%03d", Int);
	sprintf(strTail, "%04d", Dec);
	strcat(strHead, pt);
	strcat(strHead, strTail);
    
    memset(str,0,strlen(strHead));
	strcat(str, strHead);
	if (str[0] == '0')str[0] = '+';
}
