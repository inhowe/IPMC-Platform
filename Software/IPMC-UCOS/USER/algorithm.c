#include "algorithm.h"

INT32S RefV[4];

void Carlib(void)
{
    OS_CPU_SR cpu_sr=0;
    INT8U i=20;
    int D0=0,D1=0,D2=0;
    OS_ENTER_CRITICAL();
    OSTaskSuspend(LED_TASK_PRIO);
    OSTaskSuspend(DBG_TASK_PRIO);
    OS_EXIT_CRITICAL();
    LED0=0;
    while(i>0)
    {
        delay_ms(20*4*2);//let OS scheduling to acquire data;
        D0+=ADS_Buff[0];
        D1+=ADS_Buff[1];
        D2+=ADS_Buff[2];
        i--;
    }
    RefV[0]=D0/20.0;
    RefV[1]=D1/20.0;
    RefV[2]=D2/20.0;
    LaserCMDToZero();
    LED0=1;

    OSTaskResume(LED_TASK_PRIO);
    OSTaskResume(DBG_TASK_PRIO);
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
