#ifndef __ALGORITHM_H
#define __ALGORITHM_H

#include "includes.h"

typedef struct PID_s{
    double SetPoint;
    double KP;//P系数
    double KI;//I系数
    double KD;//D系数
    double LastErr1,LastErr2,SumErr,dErr,Err;//err[k-1],err[k-2],积分，微分，偏差

    double output;
}PID_t;

typedef struct Bang_s{
    double SetPoint;
    double Bind;//死区
    double output;
}Bang_t;

extern INT32S   RefV[4];
extern PID_t    algPID;
extern Bang_t   algBang;

void Carlib(void);
void myftoa(double data,char str[]);
bool BangBangController(double SetPoint,double Bind);
double PIDController(double SetPoint,double Bind);


#endif
