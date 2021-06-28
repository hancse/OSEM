/*
 * stateMachine.c
 *
 *  Created on: 20 Apr 2021
 *      Author: richard
 */

#include "stateMachine.h"

#define TEMPERATURE_POLL_TIMER_MS			1000		// Every second
#define OUTPUT_POLL_TIMER_MS				1000		// Every second

uint32_t temperaturePollTimer = 0;
uint32_t outputPollTimer = 0;
uint32_t timer1Running, timer2Running = 0;
uint32_t freqInput1Active, freqInput2Active = 0;

extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim6;
extern TIM_HandleTypeDef htim7;
extern DAC_HandleTypeDef hdac1;

void pollTemperature()
{
	if ( (HAL_GetTick() - temperaturePollTimer) < TEMPERATURE_POLL_TIMER_MS){return;}	// Milliseconds timer
	temperaturePollTimer = HAL_GetTick();

	int8_t temperatures[8] = {0};
	SIOM_Output.skipFrequencyMeasurement1 = TRUE;
	SIOM_Output.skipFrequencyMeasurement2 = TRUE;

	if (DS_2482_800_getTemperatureValues(temperatures) < 0)
	{
		systemDebug("DS_2482_800_getTemperatureValues failed\r\n");
		return;
	}

	// +55 because minimal temp values is -55 and MQTT communication uses uint8_t as data blocks >> value 55 equals 0 degrees celcius
	SIOM_Output.temperatureSensor_1 = (temperatures[0] + 55);
	SIOM_Output.temperatureSensor_2 = (temperatures[1] + 55);
	SIOM_Output.temperatureSensor_3 = (temperatures[2] + 55);
	SIOM_Output.temperatureSensor_4 = (temperatures[3] + 55);
	SIOM_Output.temperatureSensor_5 = (temperatures[4] + 55);
	SIOM_Output.temperatureSensor_6 = (temperatures[5] + 55);
	SIOM_Output.temperatureSensor_7 = (temperatures[6] + 55);
	SIOM_Output.temperatureSensor_8 = (temperatures[7] + 55);
}

void pollOutputs()
{
	if ( (HAL_GetTick() - outputPollTimer) < OUTPUT_POLL_TIMER_MS){return;}	// Milliseconds timer
	outputPollTimer = HAL_GetTick();

	if (SIOM_OldInput.expansionBoardAnalogOutput != SIOM_Input.expansionBoardAnalogOutput)
	{
		if (SIOM_Input.expansionBoardAnalogOutput == 0)
		{
			// Turn off
			if (HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_1) != HAL_OK)
			{
				systemDebug("HAL_TIM_PWM_Stop failed\r\n");
			}

			// Re-init IO as output
			GPIO_InitTypeDef GPIO_InitStruct = {0};
			GPIO_InitStruct.Pin = TIM1_CH1_VALVE_CONTROL_Pin;
			GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
			HAL_GPIO_Init(TIM1_CH1_VALVE_CONTROL_GPIO_Port, &GPIO_InitStruct);
			HAL_GPIO_WritePin(TIM1_CH1_VALVE_CONTROL_GPIO_Port, TIM1_CH1_VALVE_CONTROL_Pin, GPIO_PIN_RESET);
		}else
		{
			if (SIOM_OldInput.expansionBoardAnalogOutput == 0)
			{
				// Re init IO
				GPIO_InitTypeDef GPIO_InitStruct = {0};
			    GPIO_InitStruct.Pin = TIM1_CH1_VALVE_CONTROL_Pin;
			    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
			    GPIO_InitStruct.Pull = GPIO_NOPULL;
			    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
			    GPIO_InitStruct.Alternate = GPIO_AF1_TIM1;
			    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

				// Turn on
				if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1) != HAL_OK)
				{
					systemDebug("HAL_TIM_PWM_Start failed\r\n");
				}
			}
			// 16 bit timer
			uint16_t outputValue = SIOM_Input.expansionBoardAnalogOutput * 10;
			__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, outputValue);
		}
		SIOM_OldInput.expansionBoardAnalogOutput = SIOM_Input.expansionBoardAnalogOutput;
	}

	if (SIOM_OldInput.expansionBoardHeaterOutput != SIOM_Input.expansionBoardHeaterOutput)
	{
		if (SIOM_Input.expansionBoardHeaterOutput == 0)
		{
			// Turn off
			HAL_GPIO_WritePin(BOILER_CONTROL_GPIO_Port, BOILER_CONTROL_Pin, GPIO_PIN_SET);
		}else
		{
			// Turn on
			HAL_GPIO_WritePin(BOILER_CONTROL_GPIO_Port, BOILER_CONTROL_Pin, GPIO_PIN_RESET);
		}
		SIOM_OldInput.expansionBoardHeaterOutput = SIOM_Input.expansionBoardHeaterOutput;
	}

	if (SIOM_OldInput.valve_1 != SIOM_Input.valve_1)
	{
		if (SIOM_Input.valve_1 == 0)
		{
			// Turn off
			if (HAL_DAC_Stop(&hdac1, DAC_CHANNEL_1) != HAL_OK)
			{
				systemDebug("HAL_DAC_Stop failed\r\n");
			}

			// Re-init IO as output
			GPIO_InitTypeDef GPIO_InitStruct = {0};
			GPIO_InitStruct.Pin = DAC1_OUT1_VALVE_1_Pin;
			GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
			HAL_GPIO_Init(DAC1_OUT1_VALVE_1_GPIO_Port, &GPIO_InitStruct);
			HAL_GPIO_WritePin(DAC1_OUT1_VALVE_1_GPIO_Port, DAC1_OUT1_VALVE_1_Pin, GPIO_PIN_RESET);
		}else
		{
			if (SIOM_OldInput.valve_1 == 0)
			{
				// Re init IO
				GPIO_InitTypeDef GPIO_InitStruct = {0};
			    GPIO_InitStruct.Pin = DAC1_OUT1_VALVE_1_Pin;
			    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
			    GPIO_InitStruct.Pull = GPIO_NOPULL;
			    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

				// Turn on
				if (HAL_DAC_Start(&hdac1, DAC_CHANNEL_1) != HAL_OK)
				{
					systemDebug("HAL_DAC_Start failed\r\n");
				}
			}

			uint32_t output = (float)SIOM_Input.valve_1 * 40.95;
			HAL_DAC_SetValue(&hdac1, DAC_CHANNEL_1, DAC_ALIGN_12B_R, output);
		}
		SIOM_OldInput.valve_1 = SIOM_Input.valve_1;
	}

	if (SIOM_OldInput.valve_2 != SIOM_Input.valve_2)
	{
		if (SIOM_Input.valve_2 == 0)
		{
			// Turn off
			if (HAL_DAC_Stop(&hdac1, DAC_CHANNEL_2) != HAL_OK)
			{
				systemDebug("HAL_DAC_Stop failed\r\n");
			}

			// Re-init IO as output
			GPIO_InitTypeDef GPIO_InitStruct = {0};
			GPIO_InitStruct.Pin = DAC1_OUT2_VALVE_2_Pin;
			GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
			HAL_GPIO_Init(DAC1_OUT2_VALVE_2_GPIO_Port, &GPIO_InitStruct);
			HAL_GPIO_WritePin(DAC1_OUT2_VALVE_2_GPIO_Port, DAC1_OUT2_VALVE_2_Pin, GPIO_PIN_RESET);
		}else
		{
			if (SIOM_OldInput.valve_2 == 0)
			{
				// Re init IO
				GPIO_InitTypeDef GPIO_InitStruct = {0};
			    GPIO_InitStruct.Pin = DAC1_OUT2_VALVE_2_Pin;
			    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
			    GPIO_InitStruct.Pull = GPIO_NOPULL;
			    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

				// Turn on
				if (HAL_DAC_Start(&hdac1, DAC_CHANNEL_2) != HAL_OK)
				{
					systemDebug("HAL_DAC_Start failed\r\n");
				}
			}

			uint32_t output = (float)SIOM_Input.valve_2 * 40.95;
			HAL_DAC_SetValue(&hdac1, DAC_CHANNEL_2, DAC_ALIGN_12B_R, output);
		}
		SIOM_OldInput.valve_2 = SIOM_Input.valve_2;
	}
}

void pollInputs()
{
	if (SIOM_Input.frequencyInterruptCount1 > 20)
	{
		// Input frequency too Low
		if (SIOM_Output.skipFrequencyMeasurement1 == TRUE)
		{
			// Skip next value assignment >> invalid because of temperature sensor measurement
			SIOM_Output.skipFrequencyMeasurement1 = FALSE;
			SIOM_Output.flowInput1Frequency = SIOM_OldOutput.flowInput1Frequency;
		}else
		{
			SIOM_Output.flowInput1Frequency = 0;
		}

		SIOM_Input.frequencyInterruptCount1 = 21;	// Assign so it never overruns
	}

	SIOM_Input.frequencyInput1 = HAL_GPIO_ReadPin(EXTI0_FREQ_CALC_GPIO_Port, EXTI0_FREQ_CALC_Pin);
	if (SIOM_Input.frequencyInput1 != SIOM_OldInput.frequencyInput1)
	{
		SIOM_OldInput.frequencyInput1 = SIOM_Input.frequencyInput1;
		if (SIOM_Input.frequencyInput1 == GPIO_PIN_SET)
		{
			if (timer1Running == 0)
			{
				htim7.Instance->CNT = 0;
				timer1Running = 1;
				SIOM_Input.frequencyInterruptCount1 = 0;
			}
			else
			{
				// Time between IO's high is period time >> calculate frequency based on that
				// Clock running on 1MHz
				register uint32_t currentCount = htim7.Instance->CNT + (SIOM_Input.frequencyInterruptCount1 * 65535);
				register float currentFrequency = 1 / (float)((float)currentCount / 1000000); // 1 / (amount of time in seconds (puls count / clock count)) = frequency
				SIOM_Output.flowInput1Frequency = (uint16_t)currentFrequency;

				// Max out value at 1000Hz
				if (SIOM_Output.flowInput1Frequency > 1000)
				{
					SIOM_Output.flowInput1Frequency = 1000;
				}
				SIOM_OldOutput.flowInput1Frequency = SIOM_Output.flowInput1Frequency;

				timer1Running = 0;
			}
		}
	}

	if (SIOM_Input.frequencyInterruptCount2 > 20)
	{
		// Input frequency too Low
		if (SIOM_Output.skipFrequencyMeasurement2 == TRUE)
		{
			// Skip next value assignment >> invalid because of temperature sensor measurement
			SIOM_Output.skipFrequencyMeasurement2 = FALSE;
			SIOM_Output.flowInput2Frequency = SIOM_OldOutput.flowInput2Frequency;
		}
		else
		{
			SIOM_Output.flowInput2Frequency = 0;
		}

		SIOM_Input.frequencyInterruptCount2 = 21;	// Assign so it never overruns
	}

	SIOM_Input.frequencyInput2 = HAL_GPIO_ReadPin(EXTI1_FREQ_CALC_GPIO_Port, EXTI1_FREQ_CALC_Pin);
	if (SIOM_Input.frequencyInput2 != SIOM_OldInput.frequencyInput2)
	{
		SIOM_OldInput.frequencyInput2 = SIOM_Input.frequencyInput2;
		if (SIOM_Input.frequencyInput2 == GPIO_PIN_SET)
		{
			if (timer2Running == 0)
			{
				htim6.Instance->CNT = 0;
				timer2Running = 1;
				SIOM_Input.frequencyInterruptCount2 = 0;
			}
			else
			{
				// Time between IO's high is period time >> calculate frequency based on that
				// Clock running on 1MHz
				register uint32_t currentCount = htim6.Instance->CNT + (SIOM_Input.frequencyInterruptCount2 * 65535);
				register float currentFrequency = 1 / (float)((float)currentCount / 1000000); // 1 / (amount of time in seconds (puls count / clock count)) = frequency
				SIOM_Output.flowInput2Frequency = (uint16_t)currentFrequency;

				// Max out value at 1000Hz
				if (SIOM_Output.flowInput2Frequency > 1000)
				{
					SIOM_Output.flowInput2Frequency = 1000;
				}
				SIOM_OldOutput.flowInput2Frequency = SIOM_Output.flowInput2Frequency;

				timer2Running = 0;
			}
		}
	}
}
