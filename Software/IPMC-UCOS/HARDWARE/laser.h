#include "includes.h"

#define SendData(array,len) HAL_UART_Transmit(&UART2_Handler,array,len,100);

extern float LaserOffset;

void  LaserCMDMessure(void);
float LaserBAKMessure(unsigned char array[]);

