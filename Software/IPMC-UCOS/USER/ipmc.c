#include "ipmc.h"


void IPMC_Init(void)
{
#ifdef THEARM
    GPIO_InitTypeDef GPIO_InitStructure;
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE); //使能 PB 端口时钟

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2|GPIO_Pin_3; //配置 pin10
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; //
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz; //IO 翻转 50MHz
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    FREE();
#else
    #ifdef PLATFORM 
    GPIO_InitTypeDef GPIO_InitStruct;

    __HAL_RCC_GPIOC_CLK_ENABLE();

    GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_11;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed=GPIO_SPEED_HIGH;
    
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
    HAL_GPIO_WritePin(GPIOC,GPIO_PIN_10|GPIO_PIN_11,GPIO_PIN_SET);
    #endif
#endif
}


