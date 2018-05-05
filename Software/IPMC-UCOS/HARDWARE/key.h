#include "includes.h"

#define CYCLEINDEX 2
#define KEY_Pin        GPIO_PIN_2
#define KEY_GPIO_Port  GPIOC

void KeyInit(void);
void TimerCheckKey(void);
