#include "algorithm.h"

INT32S RefV[4];
PID_t   algPID ={0},algOuterPID={0};
Bang_t  algBang={0};
CtrlType_t CtrlType=TYPE_UNKNOWN;

void Carlib(void)
{
    #define SAMPLES 20
    OS_CPU_SR cpu_sr=0;
    INT8U i=SAMPLES;
    int D0=0,D1=0,D2=0;
    
    CARLIB_OK_Flag=false;
    OS_ENTER_CRITICAL();
    OSTaskSuspend(LED_TASK_PRIO);
    OSTaskSuspend(PRINT_TASK_PRIO);
    OS_EXIT_CRITICAL();
    LED0=0;
    while(i>0)
    {
        IWDG_Feed();
        delay_ms(SAMPLES*4*2);//let OS scheduling to acquire data;
        D0+=ADS_Buff[0];
        D1+=ADS_Buff[1];
        D2+=ADS_Buff[2];
        i--;
        if(i==1)LaserCMDToZero();
    }
    RefV[0]=(double)D0/SAMPLES;
    RefV[1]=(double)D1/SAMPLES;
    RefV[2]=(double)D2/SAMPLES;
    LED0=1;
    Current_mA=Power_mW=Laser_mm=Force_mN=Energy=0;
    OSTaskResume(PRINT_TASK_PRIO);
    OSTaskResume(LED_TASK_PRIO);
    
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
bool BangBangController(Bang_t* Ctrl)
{
    double UpperLim,LowerLim;
    
    if(ReadBit(ErrCode,LASERErrBIT)||Ctrl->SetPoint<=Ctrl->Bind)
        return false;
    
    
    LowerLim=Ctrl->SetPoint-Ctrl->Bind/2.0;
    UpperLim=Ctrl->SetPoint+Ctrl->Bind/2.0;
    if(LaserOffset<LowerLim)
    {
        AD5722_Output(Ctrl->HV,CH0);
    }else if(LaserOffset>UpperLim)
    {
        AD5722_Output(Ctrl->LV,CH0);
    }
    return true;
}

double PIDController(PID_t* Ctrl)
{
    #define OUT_UPPERLIM  3.5 //输出信号的上下限
    #define OUT_LOWERLIM -3.5
    
    
    double UpperLim,LowerLim;//位移的控制上下限
    
    if(Ctrl->ObjType==LASER)
    {
        Ctrl->CurrntPoint = Laser_mm;
        if(ReadBit(ErrCode,LASERErrBIT))//激光传感器失效时停止控制
            return 0;
        if(LaserOffset>30||LaserOffset<-30)//错误数据时不予处理，这个很重要，因为程序逻辑没有处理好导致数据可能会变化
            return 0;
    }
    else if(Ctrl->ObjType==POWER)
    {
         Ctrl->CurrntPoint = Power_mW;
    }
    else if(Ctrl->ObjType==CURRENT)
    {
        Ctrl->CurrntPoint = Current_mA ;
    }
    else if(Ctrl->ObjType==FORCE)
    {
        Ctrl->CurrntPoint = Force_mN ;
    }
    else return 0;
    
    LowerLim=Ctrl->SetPoint - Ctrl->Bind /2.0;
    UpperLim=Ctrl->SetPoint + Ctrl->Bind /2.0;
    
    Ctrl->Err=Ctrl->SetPoint-Ctrl->CurrntPoint;
    if(Ctrl->output>OUT_LOWERLIM&&Ctrl->output<OUT_UPPERLIM)//抗饱和
        Ctrl->SumErr+=Ctrl->Err;
//    if(LaserOffset>LowerLim&&LaserOffset<UpperLim)SumErr=0;//积分死区，接近目标时关闭积分
    Ctrl->dErr=Ctrl->LastErr1-Ctrl->LastErr2;
    Ctrl->LastErr2=Ctrl->LastErr1;
    Ctrl->LastErr1=Ctrl->Err;
    
    Ctrl->output = Ctrl->KP*Ctrl->Err + Ctrl->KI*Ctrl->SumErr + Ctrl->KD*Ctrl->dErr;
    
    if(Ctrl->output>OUT_UPPERLIM)Ctrl->output=OUT_UPPERLIM;
    if(Ctrl->output<OUT_LOWERLIM)Ctrl->output=OUT_LOWERLIM;
    
    AD5722_Output(Ctrl->output,CH0);
//    printf("Err:%.1f SumErr:%.1f dErr:%.1f LastErr1:%.1f LastErr2:%.1f out:%.1f\r\n",Err,SumErr,dErr,LastErr1,LastErr2,output);
    return Ctrl->output;
}

void ClearController(void)
{
    algPID.dErr=0;
    algPID.Err=0;
    algPID.SumErr=0;
    algPID.LastErr1=0;
    algPID.LastErr2=0;
//    memset(&algPID,0,sizeof(algPID));
//    memset(&algBang,0,sizeof(algBang));
}
