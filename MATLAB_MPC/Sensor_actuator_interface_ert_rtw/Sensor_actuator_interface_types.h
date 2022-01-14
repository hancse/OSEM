/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Sensor_actuator_interface_types.h
 *
 * Code generated for Simulink model 'Sensor_actuator_interface'.
 *
 * Model version                  : 2.33
 * Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
 * C/C++ source code generated on : Fri Jan 14 15:44:24 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_Sensor_actuator_interface_types_h_
#define RTW_HEADER_Sensor_actuator_interface_types_h_
#include "rtwtypes.h"
#include "multiword_types.h"

/* Model Code Variants */

/* Custom Type definition for MATLABSystem: '<Root>/MQTT Publish1' */
#include "MW_MQTT.h"
#ifndef struct_tag_foKwkzdF324F8yraJ2Vt0D
#define struct_tag_foKwkzdF324F8yraJ2Vt0D

struct tag_foKwkzdF324F8yraJ2Vt0D
{
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  uint16_T subscribeID;
};

#endif                                 /*struct_tag_foKwkzdF324F8yraJ2Vt0D*/

#ifndef typedef_codertarget_linux_blocks_MQTT_T
#define typedef_codertarget_linux_blocks_MQTT_T

typedef struct tag_foKwkzdF324F8yraJ2Vt0D codertarget_linux_blocks_MQTT_T;

#endif                               /*typedef_codertarget_linux_blocks_MQTT_T*/

#ifndef struct_tag_PMfBDzoakfdM9QAdfx2o6D
#define struct_tag_PMfBDzoakfdM9QAdfx2o6D

struct tag_PMfBDzoakfdM9QAdfx2o6D
{
  uint32_T f1[8];
};

#endif                                 /*struct_tag_PMfBDzoakfdM9QAdfx2o6D*/

#ifndef typedef_cell_wrap_Sensor_actuator_int_T
#define typedef_cell_wrap_Sensor_actuator_int_T

typedef struct tag_PMfBDzoakfdM9QAdfx2o6D cell_wrap_Sensor_actuator_int_T;

#endif                               /*typedef_cell_wrap_Sensor_actuator_int_T*/

#ifndef struct_tag_52FCbZCsz66rwLK9XCxJXH
#define struct_tag_52FCbZCsz66rwLK9XCxJXH

struct tag_52FCbZCsz66rwLK9XCxJXH
{
  int32_T isInitialized;
  cell_wrap_Sensor_actuator_int_T inputVarSize;
  MW_MQTT_Data_Type MW_dataType;
};

#endif                                 /*struct_tag_52FCbZCsz66rwLK9XCxJXH*/

#ifndef typedef_codertarget_linux_blocks_MQ_m_T
#define typedef_codertarget_linux_blocks_MQ_m_T

typedef struct tag_52FCbZCsz66rwLK9XCxJXH codertarget_linux_blocks_MQ_m_T;

#endif                               /*typedef_codertarget_linux_blocks_MQ_m_T*/

/* Parameters (default storage) */
typedef struct P_Sensor_actuator_interface_T_ P_Sensor_actuator_interface_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_Sensor_actuator_inter_T RT_MODEL_Sensor_actuator_inte_T;

#endif                       /* RTW_HEADER_Sensor_actuator_interface_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
