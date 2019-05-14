#ifndef __ALGORITHM_H
#define __ALGORITHM_H

#include "includes.h"

//位移mm、功率mW、电流mA、力mN、位移变化率
typedef enum CtrlObj_s{
    LASER=0,
    POWER,
    CURRENT,
    FORCE,
    dLaser,
}CtrlObj_t;

typedef enum CtrlType_s{
    TYPE_PID=0,
    TYPE_BANG,
    TYPE_SERIAL_PID,
    TYPE_UNKNOWN=0xff
}CtrlType_t;

typedef struct PID_s{
    CtrlObj_t ObjType;//被控对象
    double nowPoint;
    double SetPoint;
    double KP;//P系数
    double KI;//I系数
    double KD;//D系数
    double LastErr1,LastErr2,SumErr,dErr,Err;//err[k-1],err[k-2],积分，微分，偏差
    double Bind;//死区
    double getPoint;//存储电脑发下来的设定值（因为setPoint可能会根据算法需要改变）
    double output;
}PID_t;

typedef struct Bang_s{
    double SetPoint;
    CtrlObj_t ObjType;
    double Bind;//死区
    double HV;//高电压
    double LV;//低电压
    double output;
}Bang_t;

extern INT32S   RefV[4];
extern PID_t    algPID,algOuterPID,algPID_1;
extern Bang_t   algBang;
extern CtrlType_t CtrlType;
extern double setEnergy;

void Carlib(void);
void myftoa(double data,char str[]);

//控制器
void step1_step2(double getPoint_IN,double nowPoint_IN,double* newSetPoint_OUT,CtrlObj_t ObjType);
u8 UpdateController(PID_t* Ctrl);
bool BangBangController(Bang_t* Ctrl);
double PIDController(PID_t* Ctrl);
void ClearController(void);

//采样率100Hz的滤波器
double WeightedFilter(double input);
double RC_LowPassFilter(double nowInput,double lastValue, double frqc);
double IIR_LowPassFilter2P5Hz_Current(double xk);
double IIR_LowPassFilter2P5Hz_Power(double xk);
#endif
