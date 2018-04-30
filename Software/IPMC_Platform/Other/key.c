#include "key.h"

void TimerCheckKey(void)
{
  static uint8_t cnt=0;
  if( cnt<CYCLEINDEX && HAL_GPIO_ReadPin(KEY_GPIO_Port,KEY_Pin)==GPIO_PIN_RESET )//press down
    cnt++;
  else if( cnt==CYCLEINDEX && HAL_GPIO_ReadPin(KEY_GPIO_Port,KEY_Pin)==GPIO_PIN_SET )//release
  {
    BoardID++;
    cnt=0;
    if(BoardID>MAXBoardID)BoardID=0;
  }
  else
    return;
}
