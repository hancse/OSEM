
#ifndef _SYSYTTEM_DEFINITION_H
#define _SYSYTTEM_DEFINITION_H

#include "stddef.h"
#include "stdint.h"
#include <stdarg.h>
#include <string.h>
#include <stdio.h>

#include "stm32l4xx_hal.h"
#include "main.h"

#define TRUE 	1
#define FALSE	0

#define DEBUG_TIMEOUT_UART_MS 100
#define DEBUG_MAX_STRING_SIZE 200


// I2C address map
enum e_I2CAddressMap_t
{
	I2C_ADDRESS_MAP_DS_2482_800 = 0x30, // Device address is 0x30(8bit)
	I2C_ADDRESS_MAP_EOF
};

struct s_inputData_t
{
	uint8_t expansionBoardAnalogOutput;
	uint8_t expansionBoardHeaterOutput;
	uint8_t valve_1;
	uint8_t valve_2;
	uint8_t frequencyInput1;
	uint32_t frequencyInterruptCount1;
	uint8_t frequencyInput2;
	uint32_t frequencyInterruptCount2;

	uint8_t i2cArray[8];
};

struct s_outputData_t
{
	// End values
	uint8_t temperatureSensor_1;
	uint8_t temperatureSensor_2;
	uint8_t temperatureSensor_3;
	uint8_t temperatureSensor_4;
	uint8_t temperatureSensor_5;
	uint8_t temperatureSensor_6;
	uint8_t temperatureSensor_7;
	uint8_t temperatureSensor_8;
	uint16_t flowInput1Frequency;
	uint16_t flowInput2Frequency;

	uint8_t skipFrequencyMeasurement1;
	uint8_t skipFrequencyMeasurement2;
};

// Input structures
struct s_inputData_t SIOM_Input;
struct s_inputData_t SIOM_OldInput;

// Output structures
struct s_outputData_t SIOM_Output;
struct s_outputData_t SIOM_OldOutput;

/**
  * @brief systemInit
  * @brief this function initializes the system and selects the 'debug UART'
  * @param debugUart UART_HandleTypeDef*, pointer to the 'UART_HandleTypeDef' type define indicating the debug UART
  * @return void
  */
void systemInit(UART_HandleTypeDef *debugUart);

/**
  * @brief systemDebug
  * @brief this function outputs a debug string over the given 'debug UART'
  * @param array char*, debug string to print to debug UART
  * @return void
  */
void systemDebug(char* array, ...);

#endif /* _SYSYTTEM_DEFINITION_H */
