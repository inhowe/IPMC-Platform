#include "algorithm.h"

INT32S RefV[4];
PID_t   algPID ={0},algOuterPID={0},algPID_1={0};
Bang_t  algBang={0};
CtrlType_t CtrlType=TYPE_UNKNOWN;
double setEnergy=0;//启动控制的能量阈值，在此之前进行累计。


void Carlib(void)
{
    #define SAMPLES 255
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
        delay_ms(15);//let OS scheduling to acquire data;
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
    Current_mA=Power_mW=Laser_mm=Force_mN=Energy_mJ=0;
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


//阶跃信号平滑过渡
//输入：设定值，当前值
//输出：平滑处理后的新设定值
void smoothGradient(double setPoint_IN,double nowPoint_IN,double* newSetPoint_OUT)
{
    #define DIVISION 200 //拆分数，渐变时间=DIVISION*0.01秒
    static int runStage=0;
    static double nowSet=0,nowPoint=0;
    static double divide=0;
    
    if(Energy_mJ>setEnergy)//超过能量阈值后开始运行
        runStage++;
    else                    //关闭状态
    {
        runStage=0;
        return;
    }
    
    if(runStage==1)//初始化
    {
        nowSet   = setPoint_IN;
        nowPoint = nowPoint_IN;
        divide = (nowPoint_IN-setPoint_IN)/DIVISION;
    }
    if(runStage>=1)//运行中
    {
        if( (nowPoint-divide*runStage<=nowSet && nowPoint>nowSet) || 
            (nowPoint-divide*runStage>=nowSet && nowPoint<nowSet) )//停止运行
        {
            *newSetPoint_OUT=nowSet;
            return;
        }
        
        *newSetPoint_OUT = nowPoint-divide*runStage;
    }
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
    
    //根据控制对象进行赋值
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
    else if(Ctrl->ObjType==dLaser)
    {
        Ctrl->CurrntPoint = dLaser_mm ;
    }
    else return 0;
    
    smoothGradient(Ctrl->SetPoint,Ctrl->CurrntPoint,&Ctrl->SetPoint);
    
    LowerLim=Ctrl->SetPoint - Ctrl->Bind /2.0;
    UpperLim=Ctrl->SetPoint + Ctrl->Bind /2.0;
    LowerLim=LowerLim;
    UpperLim=UpperLim;
    
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

//清除控制器参数
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


//滑动加权滤波
double WeightedFilter(double input)
{
    #define LENGTH 4
    double weight[4]={0.4,0.3,0.2,0.1};
//    double weight[6]={0.6,0.24,0.096,0.0384,0.01536,0.010285};
//    double weight[8]={0.6,0.24,0.096,0.0384,0.01536,0.006144,0.0024576,0.0016834};
    static bool filled=false;
    static uint8_t cnt=0;
    static double cache[LENGTH]={0};//数据缓存
    //填充cache，倒序
    if(cnt++<=LENGTH)
    {
        cache[LENGTH-cnt]=input;
        return input;
    }
    else
    {
        filled=true;
    }
    
    double result=0;
    if(filled)
    {
        //重新排列
        for(u8 i=LENGTH-1;i>0;i--)
        {
            cache[i]=cache[i-1];
        }
        cache[0]=input;
        //加权
        for(u8 i=0;i<LENGTH;i++)
        {
            result += cache[i]*weight[i];
        }
        return result;
    }
    else
        return input;
}

//采样频率为100Hz的低通滤波
//滤波系数越小，灵敏度越小，滤波越平稳
//frqc=截至频率=滤波系数/2/圆周率/采样时间间隔秒，f=coe/2/pi/t; 
double RC_LowPassFilter(double nowInput,double lastValue, double frqc)
{
    double nextValue=0;
    double coe=frqc*2*3.141592653*0.01;//
    
    if(frqc>0)
        nextValue=coe*nowInput+(1-coe)*lastValue;
    else
        nextValue=nowInput;
    
    return nextValue;
}

//采样率100hz，截至频率2.5Hz左右的IIR滤波器,专门给电流用的
//xk：输入值
//tap：存储的是被滤波信号的历史数据（会被自动更新）
//返回值：滤波结果
double IIR_LowPassFilter2P5Hz_Current(double xk)
{
    //各抽头系数值。
    double num[3]={0.00713,0.01427,0.00713};
    double den[3]={1,-1.74727,0.77581};
    double output=0;
    
    static double xk1=0,xk2=0,yk1=0,yk2=0;
    
    output = num[0]*xk + num[1]*xk1 + num[2]*xk2 - den[1]*yk1 - den[2]*yk2;
    xk2=xk1;
    xk1=xk;
    yk2=yk1;
    yk1=output;
    
    return output;
}

double IIR_LowPassFilter2P5Hz_Power(double xk)
{
    //各抽头系数值。
    double num[3]={0.00713,0.01427,0.00713};
    double den[3]={1,-1.74727,0.77581};
    double output=0;
    
    static double xk1=0,xk2=0,yk1=0,yk2=0;
    
    output = num[0]*xk + num[1]*xk1 + num[2]*xk2 - den[1]*yk1 - den[2]*yk2;
    xk2=xk1;
    xk1=xk;
    yk2=yk1;
    yk1=output;
    
    return output;
}
