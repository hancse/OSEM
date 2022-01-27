/*
 * stateMachine.h
 *
 *  Created on: 20 Apr 2021
 *      Author: richard
 */

#ifndef SIOMMODULE_STATEMACHINE_H_
#define SIOMMODULE_STATEMACHINE_H_

#include "systemDefinition.h"
#include "DL_DS_2482_800/ds_2482_800.h"

/**
  * @brief pollTemperature
  * @brief poll function for temperature retrieval >> needs to be called constantly
  * @return void
  */
void pollTemperature();

/**
  * @brief pollIo
  * @brief poll function for IO input control >> needs to be called constantly
  * @return void
  */
void pollInputs();

/**
  * @brief pollOutputs
  * @brief poll function for IO output control >> needs to be called constantly
  * @return void
  */
void pollOutputs();

/**
 * @brief pollCommunication
 * @brief poll function for communication control >> needs to be called constantly
 * @return void
 */
void pollCommunication();

#endif /* SIOMMODULE_STATEMACHINE_H_ */
