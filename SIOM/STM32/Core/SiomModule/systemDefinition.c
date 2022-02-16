/*
 * systemDefinition.c
 *
 *  Created on: 20 Apr 2021
 *      Author: richard
 */

#include "systemDefinition.h"

// Debugging variables
UART_HandleTypeDef *mDebugUart;
char messageCharArg[DEBUG_MAX_STRING_SIZE];

void systemInit(UART_HandleTypeDef *debugUart)
{
	mDebugUart = debugUart;

	SIOM_Input.expansionBoardAnalogOutput = 0;
	SIOM_Input.expansionBoardHeaterOutput = 0;
	SIOM_Input.valve_1 = FALSE;
	SIOM_Input.valve_2 = FALSE;
	SIOM_Input.frequencyInput1 = FALSE;
	SIOM_Input.frequencyInterruptCount1 = 0;
	SIOM_Input.frequencyInput2 = FALSE;
	SIOM_Input.frequencyInterruptCount2 = 0;

	SIOM_OldInput.expansionBoardAnalogOutput = 1;
	SIOM_OldInput.expansionBoardHeaterOutput = 1;
	SIOM_OldInput.valve_1 = TRUE;
	SIOM_OldInput.valve_2 = TRUE;
	SIOM_OldInput.frequencyInput1 = FALSE;
	SIOM_OldInput.frequencyInterruptCount1 = 0;
	SIOM_OldInput.frequencyInput2 = FALSE;
	SIOM_OldInput.frequencyInterruptCount2 = 0;

	for (int i = 0; i < 8; i++)
	{
		SIOM_Input.i2cArray[i] = 0;
		SIOM_OldInput.i2cArray[i] = 0;
	}

	SIOM_Output.temperatureSensor_1 = 0;
	SIOM_Output.temperatureSensor_2 = 0;
	SIOM_Output.temperatureSensor_3 = 0;
	SIOM_Output.temperatureSensor_4 = 0;
	SIOM_Output.temperatureSensor_5 = 0;
	SIOM_Output.temperatureSensor_6 = 0;
	SIOM_Output.temperatureSensor_7 = 0;
	SIOM_Output.temperatureSensor_8 = 0;
	SIOM_Output.flowInput1Frequency = 0;
	SIOM_Output.flowInput2Frequency = 0;
	SIOM_Output.skipFrequencyMeasurement1 = FALSE;
	SIOM_Output.skipFrequencyMeasurement2 = FALSE;

	SIOM_OldOutput.temperatureSensor_1 = 0;
	SIOM_OldOutput.temperatureSensor_2 = 0;
	SIOM_OldOutput.temperatureSensor_3 = 0;
	SIOM_OldOutput.temperatureSensor_4 = 0;
	SIOM_OldOutput.temperatureSensor_5 = 0;
	SIOM_OldOutput.temperatureSensor_6 = 0;
	SIOM_OldOutput.temperatureSensor_7 = 0;
	SIOM_OldOutput.temperatureSensor_8 = 0;
	SIOM_OldOutput.flowInput1Frequency = 0;
	SIOM_OldOutput.flowInput2Frequency = 0;
	SIOM_OldOutput.skipFrequencyMeasurement1 = FALSE;
	SIOM_OldOutput.skipFrequencyMeasurement2 = FALSE;

	systemDebug("System init...\r\n");
}

void systemDebug(char* array, ...)
{
    va_list ap;
    va_start(ap, array);
    vsnprintf(messageCharArg, DEBUG_MAX_STRING_SIZE, array, ap);
    va_end(ap);
    HAL_UART_Transmit(mDebugUart, (uint8_t*)messageCharArg, strlen(messageCharArg), (strlen(messageCharArg)*DEBUG_TIMEOUT_UART_MS));
}
