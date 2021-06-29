/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LPUART1_RX_P1_Pin GPIO_PIN_0
#define LPUART1_RX_P1_GPIO_Port GPIOC
#define LPUART1_TX_P1_Pin GPIO_PIN_1
#define LPUART1_TX_P1_GPIO_Port GPIOC
#define GPIO_PD_Pin GPIO_PIN_2
#define GPIO_PD_GPIO_Port GPIOC
#define GPIO_PDC3_Pin GPIO_PIN_3
#define GPIO_PDC3_GPIO_Port GPIOC
#define USART2_CTS_RS232_Pin GPIO_PIN_0
#define USART2_CTS_RS232_GPIO_Port GPIOA
#define USART2_RTS_RS232_Pin GPIO_PIN_1
#define USART2_RTS_RS232_GPIO_Port GPIOA
#define USART2_TX_RS232_Pin GPIO_PIN_2
#define USART2_TX_RS232_GPIO_Port GPIOA
#define USART2_RX_RS232_Pin GPIO_PIN_3
#define USART2_RX_RS232_GPIO_Port GPIOA
#define DAC1_OUT1_VALVE_1_Pin GPIO_PIN_4
#define DAC1_OUT1_VALVE_1_GPIO_Port GPIOA
#define DAC1_OUT2_VALVE_2_Pin GPIO_PIN_5
#define DAC1_OUT2_VALVE_2_GPIO_Port GPIOA
#define TIM16_CH1_HP_Pin GPIO_PIN_6
#define TIM16_CH1_HP_GPIO_Port GPIOA
#define I2C3_SCL_FREQ_CALC_Pin GPIO_PIN_7
#define I2C3_SCL_FREQ_CALC_GPIO_Port GPIOA
#define EXTI3_FREQ_CALC_Pin GPIO_PIN_4
#define EXTI3_FREQ_CALC_GPIO_Port GPIOC
#define EXTI3_FREQ_CALC_EXTI_IRQn EXTI4_IRQn
#define GPIO_PDC5_Pin GPIO_PIN_5
#define GPIO_PDC5_GPIO_Port GPIOC
#define EXTI0_FREQ_CALC_Pin GPIO_PIN_0
#define EXTI0_FREQ_CALC_GPIO_Port GPIOB
#define EXTI0_FREQ_CALC_EXTI_IRQn EXTI0_IRQn
#define EXTI1_FREQ_CALC_Pin GPIO_PIN_1
#define EXTI1_FREQ_CALC_GPIO_Port GPIOB
#define EXTI1_FREQ_CALC_EXTI_IRQn EXTI1_IRQn
#define EXTI2_FREQ_CALC_Pin GPIO_PIN_2
#define EXTI2_FREQ_CALC_GPIO_Port GPIOB
#define EXTI2_FREQ_CALC_EXTI_IRQn EXTI2_IRQn
#define I2C2_SCL_EEPROM_Pin GPIO_PIN_10
#define I2C2_SCL_EEPROM_GPIO_Port GPIOB
#define I2C2_SDA_EEPROM_Pin GPIO_PIN_11
#define I2C2_SDA_EEPROM_GPIO_Port GPIOB
#define GPIO_PDB12_Pin GPIO_PIN_12
#define GPIO_PDB12_GPIO_Port GPIOB
#define SPI2_CS_1_SPARE_Pin GPIO_PIN_6
#define SPI2_CS_1_SPARE_GPIO_Port GPIOC
#define SPI2_CS_2_SPARE_Pin GPIO_PIN_7
#define SPI2_CS_2_SPARE_GPIO_Port GPIOC
#define SPI2_INT_1_SPARE_Pin GPIO_PIN_8
#define SPI2_INT_1_SPARE_GPIO_Port GPIOC
#define SPI2_INT_2_SPARE_Pin GPIO_PIN_9
#define SPI2_INT_2_SPARE_GPIO_Port GPIOC
#define TIM1_CH1_VALVE_CONTROL_Pin GPIO_PIN_8
#define TIM1_CH1_VALVE_CONTROL_GPIO_Port GPIOA
#define USART1_TX_DEBUG_Pin GPIO_PIN_9
#define USART1_TX_DEBUG_GPIO_Port GPIOA
#define USART1_RX_DEBUG_Pin GPIO_PIN_10
#define USART1_RX_DEBUG_GPIO_Port GPIOA
#define TIM1_CH4_VALVE_CONTROL_Pin GPIO_PIN_11
#define TIM1_CH4_VALVE_CONTROL_GPIO_Port GPIOA
#define GPIO_PDA12_Pin GPIO_PIN_12
#define GPIO_PDA12_GPIO_Port GPIOA
#define BOILER_CONTROL_Pin GPIO_PIN_15
#define BOILER_CONTROL_GPIO_Port GPIOA
#define USART3_TX_RS485_Pin GPIO_PIN_10
#define USART3_TX_RS485_GPIO_Port GPIOC
#define USART3_RX_RS485_Pin GPIO_PIN_11
#define USART3_RX_RS485_GPIO_Port GPIOC
#define GPIO_PDC12_Pin GPIO_PIN_12
#define GPIO_PDC12_GPIO_Port GPIOC
#define USART3_DE_RS485_Pin GPIO_PIN_2
#define USART3_DE_RS485_GPIO_Port GPIOD
#define GPIO_PDB3_Pin GPIO_PIN_3
#define GPIO_PDB3_GPIO_Port GPIOB
#define I2C3_SDA_FREQ_CALC_Pin GPIO_PIN_4
#define I2C3_SDA_FREQ_CALC_GPIO_Port GPIOB
#define GPIO_PDB5_Pin GPIO_PIN_5
#define GPIO_PDB5_GPIO_Port GPIOB
#define I2C1_SCL_TEMP_SENSORS_Pin GPIO_PIN_6
#define I2C1_SCL_TEMP_SENSORS_GPIO_Port GPIOB
#define I2C1_SDA_TEMP_SENSORS_Pin GPIO_PIN_7
#define I2C1_SDA_TEMP_SENSORS_GPIO_Port GPIOB
#define GPIO_PDH3_Pin GPIO_PIN_3
#define GPIO_PDH3_GPIO_Port GPIOH
#define GPIO_PDB8_Pin GPIO_PIN_8
#define GPIO_PDB8_GPIO_Port GPIOB
#define GPIO_PDB9_Pin GPIO_PIN_9
#define GPIO_PDB9_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
