#include "algorithm.h"

INT32S RefV[4];
PID_t   algPID;
Bang_t  algBang;

void Carlib(void)
{
    OS_CPU_SR cpu_sr=0;
    INT8U i=20;
    int D0=0,D1=0,D2=0;
    CARLIB_OK_Flag=false;
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
    CARLIB_OK_Flag=true;
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

//BangBang控制
//@param Target:期望的目标位移
//       Bind:允许的容忍限值(死区)，要不要改成百分比形式！？
bool BangBangController(double SetPoint,double Bind)
{
    double UpperLim,LowerLim;
    
    if(LaserOffset==Laser_OutOfRange||SetPoint<=Bind)
        return false;
    
    
    LowerLim=SetPoint-Bind/2.0;
    UpperLim=SetPoint+Bind/2.0;
    if(LaserOffset<LowerLim)
    {
        AD5722_Output(3,CH0);
    }else if(LaserOffset>UpperLim)
    {
        AD5722_Output(0,CH0);
    }
    return true;
}

double PIDController(double SetPoint,double Bind)
{
    #define OUT_UPPERLIM  3.5 //输出信号的上下限
    #define OUT_LOWERLIM -3.5
    
    static double KP=0.5;//P系数
    static double KI=0.05;//I系数
    static double KD=0.01;//D系数
    static double LastErr1,LastErr2,SumErr,dErr,Err;//err[k-1],err[k-2],积分，微分，偏差
    static double output;
//    static int8_t direction=0;//方向，综合bangbang控制？
    
    double UpperLim,LowerLim;//位移的控制上下限
    
    if(LaserOffset==Laser_OutOfRange)
        return 0;
    
    LowerLim=SetPoint-Bind/2.0;
    UpperLim=SetPoint+Bind/2.0;
    
    Err=SetPoint-LaserOffset;
    if(output>OUT_LOWERLIM&&output<OUT_UPPERLIM)SumErr+=Err;//抗饱和
//    if(LaserOffset>LowerLim&&LaserOffset<UpperLim)SumErr=0;//积分死区，接近目标时关闭积分
    dErr=LastErr1-LastErr2;
    LastErr2=LastErr1;
    LastErr1=Err;
    
    output=KP*Err+KI*SumErr+KD*dErr;
    
    if(output>OUT_UPPERLIM)output=OUT_UPPERLIM;
    if(output<OUT_LOWERLIM)output=OUT_LOWERLIM;
    
    AD5722_Output(output,CH0);
//    printf("Err:%.1f SumErr:%.1f dErr:%.1f LastErr1:%.1f LastErr2:%.1f out:%.1f\r\n",Err,SumErr,dErr,LastErr1,LastErr2,output);
    return output;
}
