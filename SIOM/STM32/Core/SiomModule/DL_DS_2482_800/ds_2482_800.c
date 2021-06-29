/*
 * ds_2482_800.c
 *
 *  Created on: 20 Apr 2021
 *      Author: richard
 */
#include "ds_2482_800.h"

I2C_HandleTypeDef *i2cHandle;

int DS_2482_800_getStatusRegister(uint8_t *status);
int DS_2482_800_selectOneWireChannel(uint8_t channel);
int DS_2482_800_oneWireWriteResetPulse();
int DS_2482_800_oneWireWriteWriteByte(uint8_t byte);
int DS_2482_800_oneWireWriteWriteMultipleBytes(uint8_t *bytes, uint8_t length);
int DS_2482_800_oneWireWriteReadBit(uint8_t *ReadValue);
int DS_2482_800_oneWireWriteReadscratchPad(uint8_t *bytes);

int DS_2482_800_init(I2C_HandleTypeDef *hi2c)
{
	i2cHandle = hi2c;

	// Disable the 'Active pull-up' bit >> only one slave on onewire bus
	// Disable the '1-Wire speed' bit >> normal onewire speed (100kHz)
	// Disable the 'String pull-up' bit >> disable SPU
	// Low nibble = 0000 >> 0x0
	// High nibble >> inverse of low nibble = 1111 >> 0xF
	uint8_t configurationValue[2] = {DS_2480_800_COMMAND_MAP_WRITE_CONFIGURATION, 0xF0};
	if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, configurationValue, 2, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Transmit failed\r\n");
		return -1;
	}

	HAL_Delay(10);
	for (int i = 0; i < 8; i++)
	{
		// Select channel
		if (DS_2482_800_selectOneWireChannel(i) != 0)
		{
			systemDebug("DS_2482_800_selectOneWireChannel failed\r\n");
			return -1;
		}

		// Write onewire reset pulse
		if (DS_2482_800_oneWireWriteResetPulse() < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteResetPulse failed\r\n");
			return -1;
		}

		// Read status register
		uint8_t status = 0;
		if (DS_2482_800_getStatusRegister(&status) < 0)
		{
			systemDebug("DS_2482_800_getStatusRegister failed\r\n");
			return -1;
		}

		// Check for presence pulse
		if ((status & 0x02) != 0x02)
		{
			// 'PPD' not active >> no presence pulse detected >> no device or broken
			continue;
		}

		// Write skip ROM command (0xCC)
		// Write screatchPad register (0x4E)
			// - 3 bytes with zero's >> first 2 are temperature register (will be overwritten) and last one is configuration register
		// Set configuration register >> onewire action
		// config register bit R0 = 0
		// config register bit R1 = 0
		// Samping resolution = 9bits and time >> 93.75ms
		uint8_t startupConfig[5] = {0xCC, 0x4E, 0x00, 0x00, 0x00};
		if (DS_2482_800_oneWireWriteWriteMultipleBytes(startupConfig, 5) < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteWriteMultipleBytes failed\r\n");
			return -1;
		}

		HAL_Delay(10);
	}

	return 0;
}

int DS_2482_800_getTemperatureValues(int8_t *Array)
{
	if (!Array) {return -1;}

	// Init
		// one wire steps
		// - reset pulse master
		// - presence pulse slave

	// Action 1
		// - Skip ROM command (0xCC)

	// Action 2
		// - CONVERT T command (0x44)
		// - Poll for conversion done >> read timeslots
			// - Read until 1 >> 0 means conversion busy
	// Action 3
		// - Read skratchPad (0xBE) >> 9bytes
			// - Send reset pulse after 2 bytes >> stop data


	// For processing time optimizing >> first start all onewire channels single conversions and after last conversion started poll 1 at a time for conversion finished
	for (int i = 0; i < 8; i++)
	{
		// Select channel
		if (DS_2482_800_selectOneWireChannel(i) != 0)
		{
			systemDebug("DS_2482_800_selectOneWireChannel failed\r\n");
			return -1;
		}
		HAL_Delay(1);

		// Write onewire reset pulse
		if (DS_2482_800_oneWireWriteResetPulse() < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteResetPulse failed\r\n");
			return -1;
		}

		HAL_Delay(1);
		// Read status register
		uint8_t status = 0;
		if (DS_2482_800_getStatusRegister(&status) < 0)
		{
			systemDebug("DS_2482_800_getStatusRegister failed\r\n");
			return -1;
		}

		// Check for presence pulse
		if ((status & 0x02) != 0x02)
		{
			// 'PPD' not active >> no presence pulse detected >> no device or broken
			continue;
		}

		HAL_Delay(1);
// Action 1
		// Skip ROM command
		uint8_t skipRomCommand = 0xCC;
		if (DS_2482_800_oneWireWriteWriteMultipleBytes(&skipRomCommand, 1) < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteWriteMultipleBytes failed\r\n");
			return -1;
		}

		HAL_Delay(1);
// Action 2
		// Start conversion command
		uint8_t startConversionCommand = 0x44;
		if (DS_2482_800_oneWireWriteWriteMultipleBytes(&startConversionCommand, 1) < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteWriteMultipleBytes failed\r\n");
			return -1;
		}

		HAL_Delay(1);
	}

	// Poll for conversions finished
	for (int i = 0; i < 8; i++)
	{
		// Select channel
		if (DS_2482_800_selectOneWireChannel(i) != 0)
		{
			systemDebug("DS_2482_800_selectOneWireChannel failed\r\n");
			return -1;
		}
		HAL_Delay(1);

		// Poll until done
		uint8_t bitStatus = 0;
		uint32_t timer = HAL_GetTick();
		while(bitStatus == 0 && ((timer + 1000) > HAL_GetTick()) )	// Add safe-guard timer (1000ms)
		{
			if (DS_2482_800_oneWireWriteReadBit(&bitStatus) < 0)
			{
				systemDebug("DS_2482_800_oneWireWriteReadBit failed\r\n");
				return -1;
			}
			HAL_Delay(1);
		}

// Action 3
		HAL_Delay(1);
		// Write onewire reset pulse
		if (DS_2482_800_oneWireWriteResetPulse() < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteResetPulse failed\r\n");
			return -1;
		}

		HAL_Delay(1);
		// Read status register
		uint8_t status = 0;
		if (DS_2482_800_getStatusRegister(&status) < 0)
		{
			systemDebug("DS_2482_800_getStatusRegister failed\r\n");
			return -1;
		}

		// Check for presence pulse
		if ((status & 0x02) != 0x02)
		{
			// 'PPD' not active >> no presence pulse detected >> no device or broken
			continue;
		}

		HAL_Delay(1);

		uint8_t readScratchPadCommand[2] = {0xCC,0xBE};
		if (DS_2482_800_oneWireWriteWriteMultipleBytes(readScratchPadCommand, 2) < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteWriteMultipleBytes failed\r\n");
			return -1;
		}
		HAL_Delay(1);

		// Read new conversion data
		uint8_t scratchPadData[10] = {0};
		if (DS_2482_800_oneWireWriteReadscratchPad(scratchPadData) < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteReadscratchPad failed\r\n");
			return -1;
		}

		int16_t temp  = 0;
		if ((scratchPadData[1] & 0xF8) == 0xF8)
		{
			// Negative number
			temp = (scratchPadData[0] >> 4);
			temp += ((scratchPadData[1] & 0x07) << 4);
			temp = temp * -1;
		}else
		{
			temp = (scratchPadData[0] >> 4);
			temp += ((scratchPadData[1] & 0x07) << 4);
		}

		// Temp sensor low limit set to -55 degrees celcius >> lower values are cut off here
		if (temp < -55)
		{
			temp = -55;
		}

		Array[i] = temp;
		HAL_Delay(1);
	}

	return 0;
}

int DS_2482_800_getStatusRegister(uint8_t *status)
{
	if (!status) {return -1;}

	// Set read location
	uint8_t readLocation[2] = {DS_2480_800_COMMAND_MAP_SET_READ_POINTER, DS_2480_800_READ_POINTER_STATUS_REG};
	if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, readLocation, 2, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Transmit failed\r\n");
		return -1;
	}

	// Read status values
	if (HAL_I2C_Master_Receive(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, status, 1, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Transmit failed\r\n");
		return -1;
	}

	return 0;
}

int DS_2482_800_selectOneWireChannel(uint8_t channel)
{
	// Set read location
	uint8_t outputChannel = 0;
	switch (channel)
	{
	case 0:
		outputChannel = 0xF0;
		break;
	case 1:
		outputChannel = 0xE1;
		break;
	case 2:
		outputChannel = 0xD2;
		break;
	case 3:
		outputChannel = 0xC3;
		break;
	case 4:
		outputChannel = 0xB4;
		break;
	case 5:
		outputChannel = 0xA5;
		break;
	case 6:
		outputChannel = 0x96;
		break;
	case 7:
		outputChannel = 0x87;
		break;
	default:
		systemDebug("Invalid channel selection\r\n");
		return -1;
	}

	uint8_t readLocation[2] = {DS_2480_800_COMMAND_MAP_CHANNEL_SELECT, outputChannel};
	if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, readLocation, 2, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Transmit failed\r\n");
		return -1;
	}

	// Read response
	uint8_t feedback = 0;
	if (HAL_I2C_Master_Receive(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, &feedback, 1, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Receive failed\r\n");
		return -1;
	}

	switch (channel)
	{
	case 0:
		if (feedback != 0xB8)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	case 1:
		if (feedback != 0xB1)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	case 2:
		if (feedback != 0xAA)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	case 3:
		if (feedback != 0xA3)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	case 4:
		if (feedback != 0x9C)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	case 5:
		if (feedback != 0x95)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	case 6:
		if (feedback != 0x8E)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	case 7:
		if (feedback != 0x87)
		{
			// Wrong response
			systemDebug("DS_2482_800_selectOneWireChannel >> Wrong response\r\n");
			return -1;
		}
		break;
	}

	return 0;
}

int DS_2482_800_oneWireWriteResetPulse()
{
	uint8_t status = 0;
	if (DS_2482_800_getStatusRegister(&status) < 0)
	{
		systemDebug("DS_2482_800_getStatusRegister failed\r\n");
		return -1;
	}

	if ((status & 0x01) == 0x01)
	{
		// '1WB' active >> one wire action is busy >> ignore new action
		systemDebug("OneWire busy >> Skip action\r\n");
		return -1;
	}

	// Command for one wire reset
	uint8_t oneWireReset = DS_2480_800_COMMAND_MAP_ONE_WIRE_RESET;
	if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, &oneWireReset, 1, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Transmit failed\r\n");
		return -1;
	}

	return 0;
}

int DS_2482_800_oneWireWriteWriteByte(uint8_t byte)
{
	uint8_t status = 0;
	if (DS_2482_800_getStatusRegister(&status) < 0)
	{
		systemDebug("DS_2482_800_getStatusRegister failed\r\n");
		return -1;
	}

	if ((status & 0x01) == 0x01)
	{
		// '1WB' active >> one wire action is busy >> ignore new action
		systemDebug("OneWire busy >> Skip action\r\n");
		return -1;
	}

	// Command for one wire write byte
	uint8_t oneWireWriteByte[2] = {DS_2480_800_COMMAND_MAP_ONE_WIRE_WRITE_BYTE, byte};
	if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, oneWireWriteByte, 2, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Transmit failed\r\n");
		return -1;
	}

	return 0;
}

int DS_2482_800_oneWireWriteWriteMultipleBytes(uint8_t *bytes, uint8_t length)
{
	uint32_t timer = HAL_GetTick();
	for (int i = 0; i < length; i++)
	{
		uint8_t status = 0;
		if (DS_2482_800_getStatusRegister(&status) < 0)
		{
			systemDebug("DS_2482_800_getStatusRegister failed\r\n");
			return -1;
		}

		if ((status & 0x01) == 0x01)
		{
			// '1WB' active >> one wire action is busy >> wait 1ms and try again
			HAL_Delay(1);
			i--;
			if (HAL_GetTick() > (timer + 100) )
			{
				// Timeout safe-gaurd (100ms)
				systemDebug("Timeout\r\n");
				return -1;
			}
			continue;
		}

		if (DS_2482_800_oneWireWriteWriteByte(bytes[i]) < 0)
		{
			systemDebug("DS_2482_800_oneWireWriteWriteByte failed\r\n");
			return -1;
		}
	}

	return 0;
}

int DS_2482_800_oneWireWriteReadBit( uint8_t *ReadValue)
{
	if (!ReadValue){return -1;}

	uint8_t status = 0;
	if (DS_2482_800_getStatusRegister(&status) < 0)
	{
		systemDebug("DS_2482_800_getStatusRegister failed\r\n");
		return -1;
	}

	if ((status & 0x01) == 0x01)
	{
		// '1WB' active >> one wire action is busy >> ignore new action
		systemDebug("OneWire busy >> Skip action\r\n");
		return -1;
	}

	// Command for one wire write bit
	uint8_t oneWireWriteSingleBit[2] = {DS_2480_800_COMMAND_MAP_ONE_WIRE_SINGLE_BIT, 0x80};
	if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, oneWireWriteSingleBit, 2, 100) != HAL_OK)
	{
		systemDebug("HAL_I2C_Master_Transmit failed\r\n");
		return -1;
	}

	status = 0;
	uint32_t timer = HAL_GetTick();
	status = 0xff;
	while( ((status & 0x01) == 0x01) && ((timer + 100 ) > HAL_GetTick()) )	// Add safe-guard timer
	{
		if (DS_2482_800_getStatusRegister(&status) < 0)
		{
			systemDebug("DS_2482_800_getStatusRegister failed\r\n");
			return -1;
		}
	}

	if ( (status & 0x20) == 0x20)
	{
		// Bit is set >> response == 1
		*ReadValue = 1;
	}else
	{
		// Bit is not set >> response == 0
		*ReadValue = 0;
	}

	return 0;
}

int DS_2482_800_oneWireWriteReadscratchPad(uint8_t *bytes)
{
	if (!bytes){return -1;}

	uint8_t status = 0;
	if (DS_2482_800_getStatusRegister(&status) < 0)
	{
		systemDebug("DS_2482_800_getStatusRegister failed\r\n");
		return -1;
	}

	if ((status & 0x01) == 0x01)
	{
		// '1WB' active >> one wire action is busy >> ignore new action
		systemDebug("OneWire busy >> Skip action\r\n");
		return -1;
	}


	for (int i = 0; i < 2; i++)
	{
		// Command for one wire read byte
		uint8_t oneWireReadByte = DS_2480_800_COMMAND_MAP_ONE_WIRE_READ_BYTE;
		if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, &oneWireReadByte, 1, 100) != HAL_OK)
		{
			systemDebug("HAL_I2C_Master_Transmit failed\r\n");
			return -1;
		}

		HAL_Delay(1);

		// Command for read data register
		uint8_t readPointer[2] = {DS_2480_800_COMMAND_MAP_SET_READ_POINTER, DS_2480_800_READ_POINTER_READ_DATA_REG};
		if (HAL_I2C_Master_Transmit(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, readPointer, 2, 100) != HAL_OK)
		{
			systemDebug("HAL_I2C_Master_Transmit failed\r\n");
			return -1;
		}

		HAL_Delay(1);

		if (HAL_I2C_Master_Receive(i2cHandle, I2C_ADDRESS_MAP_DS_2482_800, &bytes[i], 1, 100) != HAL_OK)
		{
			systemDebug("HAL_I2C_Master_Receive failed\r\n");
			return -1;
		}
	}

	// Abort data after 2 bytes >> Write onewire reset pulse
	if (DS_2482_800_oneWireWriteResetPulse() < 0)
	{
		systemDebug("DS_2482_800_oneWireWriteResetPulse failed\r\n");
		return -1;
	}

	return 0;
}
