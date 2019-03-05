#include "includes.h"

#define SendData(array,len) HAL_UART_Transmit(&UART2_Handler,array,len,100);

#define Laser_OutOfRange -99.9999

extern float __IO LaserOffset;

void  LaserCMDMessure(void);
float LaserBAKMessure(unsigned char array[]);
void  LaserCMDToZero(void);
