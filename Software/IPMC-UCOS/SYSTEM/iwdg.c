#include "iwdg.h"

IWDG_HandleTypeDef IWDG_Handler;

void IWDG_Init(void)
{
    //看门狗复位时间约2秒。
    IWDG_Handler.Instance = IWDG;
    IWDG_Handler.Init.Prescaler = IWDG_PRESCALER_64;
    IWDG_Handler.Init.Reload = 1000;
    if (HAL_IWDG_Init(&IWDG_Handler) != HAL_OK)
    {
        while(1);
    }
    IWDG_Start();
}

void IWDG_Feed(void)
{
//    OS_CPU_SR  cpu_sr = 0u;
//    OS_ENTER_CRITICAL();
	HAL_IWDG_Refresh(&IWDG_Handler);//喂狗
//    OS_EXIT_CRITICAL();
}

void IWDG_Start(void)
{
    OS_CPU_SR  cpu_sr = 0u;
    OS_ENTER_CRITICAL();
    HAL_IWDG_Start(&IWDG_Handler);
    OS_EXIT_CRITICAL();
}

