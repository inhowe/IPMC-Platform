#include "ipmc.h"


void IPMC_Init(void)
{
#ifdef ROBOT_ARM
    GPIO_InitTypeDef GPIO_InitStruct;

    __HAL_RCC_GPIOC_CLK_ENABLE();

    GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_11;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed=GPIO_SPEED_HIGH;
    
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
    HAL_GPIO_WritePin(GPIOC,GPIO_PIN_10|GPIO_PIN_11,GPIO_PIN_SET);
#else

#endif
}


