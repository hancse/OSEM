/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Sensor_actuator_interface.h
 *
 * Code generated for Simulink model 'Sensor_actuator_interface'.
 *
 * Model version                  : 2.43
 * Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
 * C/C++ source code generated on : Fri Aug 12 16:54:49 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_Sensor_actuator_interface_h_
#define RTW_HEADER_Sensor_actuator_interface_h_
#include <math.h>
#include <float.h>
#include <stddef.h>
#ifndef Sensor_actuator_interface_COMMON_INCLUDES_
#define Sensor_actuator_interface_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_extmode.h"
#include "sysran_types.h"
#include "ext_work.h"
#include "MW_MQTT.h"
#endif                          /* Sensor_actuator_interface_COMMON_INCLUDES_ */

#include "Sensor_actuator_interface_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_nonfinite.h"
#include "rtGetInf.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
#define rtmGetFinalTime(rtm)           ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetRTWExtModeInfo
#define rtmGetRTWExtModeInfo(rtm)      ((rtm)->extModeInfo)
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
#define rtmGetStopRequested(rtm)       ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
#define rtmSetStopRequested(rtm, val)  ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
#define rtmGetStopRequestedPtr(rtm)    (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
#define rtmGetT(rtm)                   ((rtm)->Timing.taskTime0)
#endif

#ifndef rtmGetTFinal
#define rtmGetTFinal(rtm)              ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetTPtr
#define rtmGetTPtr(rtm)                (&(rtm)->Timing.taskTime0)
#endif

/* Block signals (default storage) */
typedef struct {
  uint8_T Topic[128];
  real_T flowLmin;                     /* '<Root>/[Hz] to [L//min]' */
  real_T MQTTSubscribe6_o2[2];         /* '<Root>/MQTT Subscribe6' */
  real_T MQTTSubscribe5_o2[2];         /* '<Root>/MQTT Subscribe5' */
  real_T MQTTSubscribe4_o2[2];         /* '<Root>/MQTT Subscribe4' */
  real_T MQTTSubscribe3_o2[2];         /* '<Root>/MQTT Subscribe3' */
  real_T MQTTSubscribe2_o2[2];         /* '<Root>/MQTT Subscribe2' */
  uint8_T MQTTSubscribe6_o1;           /* '<Root>/MQTT Subscribe6' */
  uint8_T MQTTSubscribe5_o1;           /* '<Root>/MQTT Subscribe5' */
  uint8_T MQTTSubscribe4_o1;           /* '<Root>/MQTT Subscribe4' */
  uint8_T MQTTSubscribe3_o1;           /* '<Root>/MQTT Subscribe3' */
  uint8_T MQTTSubscribe2_o1;           /* '<Root>/MQTT Subscribe2' */
  uint8_T MQTTSubscribe1_o1;           /* '<Root>/MQTT Subscribe1' */
  int8_T MQTTPublish1;                 /* '<Root>/MQTT Publish1' */
  int8_T MQTTPublish;                  /* '<Root>/MQTT Publish' */
} B_Sensor_actuator_interface_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  codertarget_linux_blocks_MQ_m_T obj; /* '<Root>/MQTT Publish1' */
  codertarget_linux_blocks_MQ_m_T obj_d;/* '<Root>/MQTT Publish' */
  codertarget_linux_blocks_MQTT_T obj_p;/* '<Root>/MQTT Subscribe6' */
  codertarget_linux_blocks_MQTT_T obj_l;/* '<Root>/MQTT Subscribe5' */
  codertarget_linux_blocks_MQTT_T obj_n;/* '<Root>/MQTT Subscribe4' */
  codertarget_linux_blocks_MQTT_T obj_o;/* '<Root>/MQTT Subscribe3' */
  codertarget_linux_blocks_MQTT_T obj_e;/* '<Root>/MQTT Subscribe2' */
  codertarget_linux_blocks_MQTT_T obj_a;/* '<Root>/MQTT Subscribe1' */
  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_Demux;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQTTS;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_HztoL;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQT_a;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_Dem_k;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQT_c;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_De_ky;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQT_f;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_Dem_e;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQT_e;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_De_ks;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQT_n;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQTTP;   /* synthesized block */

  struct {
    void *AQHandles;
  } TAQSigLogging_InsertedFor_MQT_o;   /* synthesized block */
} DW_Sensor_actuator_interface_T;

/* Parameters (default storage) */
struct P_Sensor_actuator_interface_T_ {
  real_T HztoLmin_Gain;                /* Expression: 1/6.6
                                        * Referenced by: '<Root>/[Hz] to [L//min]'
                                        */
  real_T u100_Value;                   /* Expression: 100
                                        * Referenced by: '<Root>/0 - 100%'
                                        */
  real_T u100_Value_g;                 /* Expression: 79.19979858398438
                                        * Referenced by: '<Root>/0- 100%'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_Sensor_actuator_inter_T {
  const char_T *errorStatus;
  RTWExtModeInfo *extModeInfo;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T taskTime0;
    uint32_T clockTick0;
    time_T stepSize0;
    time_T tFinal;
    boolean_T stopRequestedFlag;
  } Timing;
};

/* Block parameters (default storage) */
extern P_Sensor_actuator_interface_T Sensor_actuator_interface_P;

/* Block signals (default storage) */
extern B_Sensor_actuator_interface_T Sensor_actuator_interface_B;

/* Block states (default storage) */
extern DW_Sensor_actuator_interface_T Sensor_actuator_interface_DW;

/* Model entry point functions */
extern void Sensor_actuator_interface_initialize(void);
extern void Sensor_actuator_interface_step(void);
extern void Sensor_actuator_interface_terminate(void);

/* Real-time Model object */
extern RT_MODEL_Sensor_actuator_inte_T *const Sensor_actuator_interface_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Sensor_actuator_interface'
 */
#endif                             /* RTW_HEADER_Sensor_actuator_interface_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
