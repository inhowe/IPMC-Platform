/**
  ******************************************************************************
  * @file    bsp_internalFlash.c
  * @author  fire
  * @version V1.0
  * @date    2015-xx-xx
  * @brief   内部FLASH读写测试范例
  ******************************************************************************
  * @attention
  *
  * 实验平台:秉火  STM32 F429 开发板  
  * 论坛    :http://www.firebbs.cn
  * 淘宝    :https://fire-stm32.taobao.com
  *
  ******************************************************************************
  */
  
#include "flash.h"   

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* 要擦除内部FLASH的起始地址 */
#define FLASH_USER_START_ADDR   ADDR_FLASH_SECTOR_8   
/* 要擦除内部FLASH的结束地址 */
#define FLASH_USER_END_ADDR     ADDR_FLASH_SECTOR_12  
//获取地址所在扇区 
static uint32_t GetSector(uint32_t Address);

///**
//  * @brief  InternalFlash_Test,对内部FLASH进行读写测试
//  * @param  None
//  * @retval None
//  */
//int InternalFlash_Test(void)
//{
//    /*准备写入的测试数据*/
//    #define DATA_32                 ((uint32_t)0x00000000)
//	/*要擦除的起始扇区(包含)及结束扇区(不包含)，如8-12，表示擦除8、9、10、11扇区*/
//	uint32_t uwStartSector = 0;
//	uint32_t uwEndSector = 0;
//	
//	uint32_t uwAddress = 0;
//	uint32_t uwSectorCounter = 0;

//	__IO uint32_t uwData32 = 0;
//	__IO uint32_t uwMemoryProgramStatus = 0;
//	
//  /* FLASH 解锁 ********************************/
//  /* 使能访问FLASH控制寄存器 */
//  HAL_FLASH_Unlock();
//    
//  /* 擦除用户区域 (用户区域指程序本身没有使用的空间，可以自定义)**/
//  /* 清除各种FLASH的标志位 */  
//  __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP | FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | 
//                  FLASH_FLAG_PGAERR | FLASH_FLAG_PGPERR|FLASH_FLAG_PGSERR); 
//    

//	uwStartSector = GetSector(FLASH_USER_START_ADDR);
//	uwEndSector = GetSector(FLASH_USER_END_ADDR);

//  /* 开始擦除操作 */
//  uwSectorCounter = uwStartSector;
//  while (uwSectorCounter <= uwEndSector) 
//  {
//    /* VoltageRange_3 以“字”的大小进行操作 */ 
//      
//    FLASH_Erase_Sector(uwSectorCounter,FLASH_VOLTAGE_RANGE_3);
//    /* 计数器指向下一个扇区 大容量F4包含更多扇区，但我未考虑*/
//    if (uwSectorCounter == FLASH_SECTOR_11)
//    {
//      uwSectorCounter += 40;
//    } 
//    else 
//    {
//      uwSectorCounter += 8;
//    }
//  }

//  /* 以“字”的大小为单位写入数据 ********************************/
//  uwAddress = FLASH_USER_START_ADDR;

//  while (uwAddress < FLASH_USER_END_ADDR)
//  {
//      
//    if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD,uwAddress,DATA_32) == HAL_OK)
//    {
//      uwAddress = uwAddress + 4;
//    }
//    else
//    { 
//      /*写入出错，返回，实际应用中可加入处理 */
//			return -1;
//    }
//  }
//	

//  /* 给FLASH上锁，防止内容被篡改*/
//  HAL_FLASH_Lock(); 


//  /* 从FLASH中读取出数据进行校验***************************************/
//  /*  MemoryProgramStatus = 0: 写入的数据正确
//      MemoryProgramStatus != 0: 写入的数据错误，其值为错误的个数 */
//  uwAddress = FLASH_USER_START_ADDR;
//  uwMemoryProgramStatus = 0;
//  
//  while (uwAddress < FLASH_USER_END_ADDR)
//  {
//    uwData32 = *(__IO uint32_t*)uwAddress;

//    if (uwData32 != DATA_32)
//    {
//      uwMemoryProgramStatus++;  
//    }

//    uwAddress = uwAddress + 4;
//  }  
//  /* 数据校验不正确 */
//  if(uwMemoryProgramStatus)
//  {    
//		return -1;
//  }
//  else /*数据校验正确*/
//  { 
//		return 0;   
//  }
//}

/**
  * @brief  根据输入的地址给出它所在的sector
  *         例如：
            uwStartSector = GetSector(FLASH_USER_START_ADDR);
            uwEndSector = GetSector(FLASH_USER_END_ADDR);	
  * @param  Address：地址
  * @retval 地址所在的sector
  * @note F42x系列芯片包含更多扇区，我未考虑
  */
static uint32_t GetSector(uint32_t Address)
{
  uint32_t sector = 0;
  
  if((Address < ADDR_FLASH_SECTOR_1) && (Address >= ADDR_FLASH_SECTOR_0))
  {
    sector = FLASH_SECTOR_0;  
  }
  else if((Address < ADDR_FLASH_SECTOR_2) && (Address >= ADDR_FLASH_SECTOR_1))
  {
    sector = FLASH_SECTOR_1;  
  }
  else if((Address < ADDR_FLASH_SECTOR_3) && (Address >= ADDR_FLASH_SECTOR_2))
  {
    sector = FLASH_SECTOR_2;  
  }
  else if((Address < ADDR_FLASH_SECTOR_4) && (Address >= ADDR_FLASH_SECTOR_3))
  {
    sector = FLASH_SECTOR_3;  
  }
  else if((Address < ADDR_FLASH_SECTOR_5) && (Address >= ADDR_FLASH_SECTOR_4))
  {
    sector = FLASH_SECTOR_4;  
  }
  else if((Address < ADDR_FLASH_SECTOR_6) && (Address >= ADDR_FLASH_SECTOR_5))
  {
    sector = FLASH_SECTOR_5;  
  }
  else if((Address < ADDR_FLASH_SECTOR_7) && (Address >= ADDR_FLASH_SECTOR_6))
  {
    sector = FLASH_SECTOR_6;  
  }
  else if((Address < ADDR_FLASH_SECTOR_8) && (Address >= ADDR_FLASH_SECTOR_7))
  {
    sector = FLASH_SECTOR_7;  
  }
  else if((Address < ADDR_FLASH_SECTOR_9) && (Address >= ADDR_FLASH_SECTOR_8))
  {
    sector = FLASH_SECTOR_8;  
  }
  else if((Address < ADDR_FLASH_SECTOR_10) && (Address >= ADDR_FLASH_SECTOR_9))
  {
    sector = FLASH_SECTOR_9;  
  }
  else if((Address < ADDR_FLASH_SECTOR_11) && (Address >= ADDR_FLASH_SECTOR_10))
  {
    sector = FLASH_SECTOR_10;  
  }
  
  return sector;
}

//往指定地址写入一个字（4Byte）
//请自行确保地址是4字节对齐
HAL_StatusTypeDef WriteOneWord(uint32_t uwAddress,uint32_t* data)
{
    HAL_StatusTypeDef status=HAL_ERROR;
    HAL_FLASH_Unlock();
    __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP | FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | 
                           FLASH_FLAG_PGAERR | FLASH_FLAG_PGPERR|FLASH_FLAG_PGSERR); 
    if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD,uwAddress,(uint64_t)(&data)) == HAL_OK)
        status = HAL_OK;
    else
        status = HAL_ERROR;
    HAL_FLASH_Lock();
    
    return status;
}

//请自行确保输入的地址是4字节对齐的，也就是可以被4整除
uint32_t ReadOneWord(uint32_t uwAddress)
{
    return *(__IO uint32_t*)uwAddress;
}

/**
  *@brief  擦除地址所在的扇区
  *@param  FLASH_USER_START_ADDR <= addr <= FLASH_USER_END_ADDR
  */
void EraseOneSector(uint32_t addr)
{
    uint32_t sector;
    
    sector = GetSector(addr);

    HAL_FLASH_Unlock();
    
    __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_EOP | FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR | 
                           FLASH_FLAG_PGAERR | FLASH_FLAG_PGPERR|FLASH_FLAG_PGSERR); 
    
    FLASH_Erase_Sector(sector,FLASH_VOLTAGE_RANGE_3);
    
    HAL_FLASH_Lock();
}


