/*
 * ds_2482_800.h
 *
 *  Created on: 20 Apr 2021
 *      Author: richard
 */

#ifndef _DS_2482_800_H_
#define _DS_2482_800_H_

#include "stm32l4xx_hal.h"
#include "../systemDefinition.h"

enum  e_DS_2480_800_commands_t
{
	DS_2480_800_COMMAND_MAP_DEVICE_RESET = 0xF0,
	DS_2480_800_COMMAND_MAP_SET_READ_POINTER = 0xE1,
	DS_2480_800_COMMAND_MAP_WRITE_CONFIGURATION = 0xD2,
	DS_2480_800_COMMAND_MAP_CHANNEL_SELECT = 0xC3,
	DS_2480_800_COMMAND_MAP_ONE_WIRE_RESET = 0xB4,
	DS_2480_800_COMMAND_MAP_ONE_WIRE_SINGLE_BIT = 0x87,
	DS_2480_800_COMMAND_MAP_ONE_WIRE_WRITE_BYTE = 0xA5,
	DS_2480_800_COMMAND_MAP_ONE_WIRE_READ_BYTE = 0x96,
	DS_2480_800_COMMAND_MAP_ONE_WIRE_TRIPLET = 0x78,
};

enum  e_DS_2480_800_channelSelect_t
{
	DS_2480_800_CHANNEL_0 = 0xF0,
	DS_2480_800_CHANNEL_1 = 0xE1,
	DS_2480_800_CHANNEL_2 = 0xD2,
	DS_2480_800_CHANNEL_3 = 0xC3,
	DS_2480_800_CHANNEL_4 = 0xB4,
	DS_2480_800_CHANNEL_5 = 0xA5,
	DS_2480_800_CHANNEL_6 = 0x96,
	DS_2480_800_CHANNEL_7 = 0x87,
};

enum  e_DS_2480_800_readPointers_t
{
	DS_2480_800_READ_POINTER_STATUS_REG = 0xF0,
	DS_2480_800_READ_POINTER_READ_DATA_REG = 0xE1,
	DS_2480_800_READ_POINTER_CHANNEL_SEL_REG = 0xD2,
	DS_2480_800_READ_POINTER_CONFIG_REG = 0xC3,
};

/**
  * @brief DS_2482_800_init
  * @brief this function initializes the I2C chip with connections to all 8 temperature sensors
  * @return int, 0 if success else -1 (I2C failure >> device won't respond etc.)
  */
int DS_2482_800_init();

/**
  * @brief PL_TIM_PWM_CREATE_channelNumberToArrayLocation
  * @brief convert the channel instance to the location in the array
  * @param Array, int8_t array pointer of size 8 or more, this pointer points to the output array holding all temperatures >> output values are between values -55 and +125 degrees celcius
  * @return int, 0 if success else -1 (I2C failure >> device won't respond etc.)
  */
int DS_2482_800_getTemperatureValues(int8_t *Array);

#endif /* _DS_2482_800_H_ */
