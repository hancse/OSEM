/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Sensor_actuator_interface.c
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

#include "Sensor_actuator_interface.h"
#include "Sensor_actuator_interface_private.h"

/* Block signals (default storage) */
B_Sensor_actuator_interface_T Sensor_actuator_interface_B;

/* Block states (default storage) */
DW_Sensor_actuator_interface_T Sensor_actuator_interface_DW;

/* Real-time model */
static RT_MODEL_Sensor_actuator_inte_T Sensor_actuator_interface_M_;
RT_MODEL_Sensor_actuator_inte_T *const Sensor_actuator_interface_M =
  &Sensor_actuator_interface_M_;

/* Model step function */
void Sensor_actuator_interface_step(void)
{
  static const char_T tmp_0[7] = "valve1";
  static const char_T tmp_1[7] = "valve2";
  char* payLoadStr;
  real_T b_varargout_2[2];
  real_T tmp;
  int32_T i;
  uint32_T stringPayloadLen;
  char_T topicStr[7];
  uint8_T dataIn;

  /* MATLABSystem: '<Root>/MQTT Subscribe6' */
  MW_MQTT_subscribe_step(Sensor_actuator_interface_DW.obj_p.subscribeID, 2,
    &Sensor_actuator_interface_B.MQTTSubscribe6_o1,
    &Sensor_actuator_interface_B.MQTTSubscribe6_o2[0],
    &Sensor_actuator_interface_B.Topic[0]);

  /* MATLABSystem: '<Root>/MQTT Subscribe1' */
  MW_MQTT_subscribe_step(Sensor_actuator_interface_DW.obj_a.subscribeID, 2,
    &Sensor_actuator_interface_B.MQTTSubscribe1_o1, &b_varargout_2[0],
    &Sensor_actuator_interface_B.Topic[0]);

  /* Gain: '<Root>/[Hz] to [L//min]' incorporates:
   *  MATLABSystem: '<Root>/MQTT Subscribe1'
   */
  Sensor_actuator_interface_B.flowLmin =
    Sensor_actuator_interface_P.HztoLmin_Gain * b_varargout_2[1];

  /* MATLABSystem: '<Root>/MQTT Subscribe2' */
  MW_MQTT_subscribe_step(Sensor_actuator_interface_DW.obj_e.subscribeID, 2,
    &Sensor_actuator_interface_B.MQTTSubscribe2_o1,
    &Sensor_actuator_interface_B.MQTTSubscribe2_o2[0],
    &Sensor_actuator_interface_B.Topic[0]);

  /* MATLABSystem: '<Root>/MQTT Subscribe3' */
  MW_MQTT_subscribe_step(Sensor_actuator_interface_DW.obj_o.subscribeID, 2,
    &Sensor_actuator_interface_B.MQTTSubscribe3_o1,
    &Sensor_actuator_interface_B.MQTTSubscribe3_o2[0],
    &Sensor_actuator_interface_B.Topic[0]);

  /* MATLABSystem: '<Root>/MQTT Subscribe4' */
  MW_MQTT_subscribe_step(Sensor_actuator_interface_DW.obj_n.subscribeID, 2,
    &Sensor_actuator_interface_B.MQTTSubscribe4_o1,
    &Sensor_actuator_interface_B.MQTTSubscribe4_o2[0],
    &Sensor_actuator_interface_B.Topic[0]);

  /* MATLABSystem: '<Root>/MQTT Subscribe5' */
  MW_MQTT_subscribe_step(Sensor_actuator_interface_DW.obj_l.subscribeID, 2,
    &Sensor_actuator_interface_B.MQTTSubscribe5_o1,
    &Sensor_actuator_interface_B.MQTTSubscribe5_o2[0],
    &Sensor_actuator_interface_B.Topic[0]);

  /* DataTypeConversion: '<Root>/Data Type Conversion2' incorporates:
   *  Constant: '<Root>/0 - 100%'
   */
  tmp = floor(Sensor_actuator_interface_P.u100_Value);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  /* MATLABSystem: '<Root>/MQTT Publish' incorporates:
   *  DataTypeConversion: '<Root>/Data Type Conversion2'
   */
  dataIn = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)(uint8_T)-tmp :
                     (int32_T)(uint8_T)tmp);
  Sensor_actuator_interface_DW.obj_d.MW_dataType = MW_MQTT_UI8;
  MW_sprintf_mqtt(Sensor_actuator_interface_DW.obj_d.MW_dataType, 1U, &dataIn,
                  &payLoadStr, &stringPayloadLen);
  for (i = 0; i < 7; i++) {
    topicStr[i] = tmp_0[i];
  }

  /* MATLABSystem: '<Root>/MQTT Publish' */
  MW_MQTT_publish_step(0, 0, stringPayloadLen, &payLoadStr, &topicStr[0],
                       &Sensor_actuator_interface_B.MQTTPublish);

  /* DataTypeConversion: '<Root>/Data Type Conversion1' incorporates:
   *  Constant: '<Root>/0- 100%'
   */
  tmp = floor(Sensor_actuator_interface_P.u100_Value_g);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  /* MATLABSystem: '<Root>/MQTT Publish1' incorporates:
   *  DataTypeConversion: '<Root>/Data Type Conversion1'
   */
  dataIn = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)(uint8_T)-tmp :
                     (int32_T)(uint8_T)tmp);
  Sensor_actuator_interface_DW.obj.MW_dataType = MW_MQTT_UI8;
  MW_sprintf_mqtt(Sensor_actuator_interface_DW.obj.MW_dataType, 1U, &dataIn,
                  &payLoadStr, &stringPayloadLen);
  for (i = 0; i < 7; i++) {
    topicStr[i] = tmp_1[i];
  }

  /* MATLABSystem: '<Root>/MQTT Publish1' */
  MW_MQTT_publish_step(0, 0, stringPayloadLen, &payLoadStr, &topicStr[0],
                       &Sensor_actuator_interface_B.MQTTPublish1);

  /* External mode */
  rtExtModeUploadCheckTrigger(1);

  {                                    /* Sample time: [1.0s, 0.0s] */
    rtExtModeUpload(0, (real_T)Sensor_actuator_interface_M->Timing.taskTime0);
  }

  /* signal main to stop simulation */
  {                                    /* Sample time: [1.0s, 0.0s] */
    if ((rtmGetTFinal(Sensor_actuator_interface_M)!=-1) &&
        !((rtmGetTFinal(Sensor_actuator_interface_M)-
           Sensor_actuator_interface_M->Timing.taskTime0) >
          Sensor_actuator_interface_M->Timing.taskTime0 * (DBL_EPSILON))) {
      rtmSetErrorStatus(Sensor_actuator_interface_M, "Simulation finished");
    }

    if (rtmGetStopRequested(Sensor_actuator_interface_M)) {
      rtmSetErrorStatus(Sensor_actuator_interface_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   */
  Sensor_actuator_interface_M->Timing.taskTime0 =
    ((time_T)(++Sensor_actuator_interface_M->Timing.clockTick0)) *
    Sensor_actuator_interface_M->Timing.stepSize0;
}

/* Model initialize function */
void Sensor_actuator_interface_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));
  rtmSetTFinal(Sensor_actuator_interface_M, -1);
  Sensor_actuator_interface_M->Timing.stepSize0 = 1.0;

  /* External mode info */
  Sensor_actuator_interface_M->Sizes.checksums[0] = (255099104U);
  Sensor_actuator_interface_M->Sizes.checksums[1] = (2125411252U);
  Sensor_actuator_interface_M->Sizes.checksums[2] = (1664060526U);
  Sensor_actuator_interface_M->Sizes.checksums[3] = (3917868156U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[9];
    Sensor_actuator_interface_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = &rtAlwaysEnabled;
    systemRan[4] = &rtAlwaysEnabled;
    systemRan[5] = &rtAlwaysEnabled;
    systemRan[6] = &rtAlwaysEnabled;
    systemRan[7] = &rtAlwaysEnabled;
    systemRan[8] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(Sensor_actuator_interface_M->extModeInfo,
      &Sensor_actuator_interface_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(Sensor_actuator_interface_M->extModeInfo,
                        Sensor_actuator_interface_M->Sizes.checksums);
    rteiSetTPtr(Sensor_actuator_interface_M->extModeInfo, rtmGetTPtr
                (Sensor_actuator_interface_M));
  }

  {
    static const char_T tmp_0[6] = "temp1";
    static const char_T tmp_1[6] = "flow1";
    static const char_T tmp_2[6] = "temp2";
    static const char_T tmp_3[6] = "temp3";
    static const char_T tmp_4[6] = "temp4";
    static const char_T tmp_5[6] = "temp5";
    int32_T i;
    char_T topicRegExpStr[6];
    char_T topicStr[6];
    char_T tmp;

    /* Start for MATLABSystem: '<Root>/MQTT Subscribe6' */
    Sensor_actuator_interface_DW.obj_p.matlabCodegenIsDeleted = false;
    Sensor_actuator_interface_DW.obj_p.isSetupComplete = false;
    Sensor_actuator_interface_DW.obj_p.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_0[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &Sensor_actuator_interface_DW.obj_p.subscribeID);
    Sensor_actuator_interface_DW.obj_p.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<Root>/MQTT Subscribe6' */

    /* Start for MATLABSystem: '<Root>/MQTT Subscribe1' */
    Sensor_actuator_interface_DW.obj_a.matlabCodegenIsDeleted = false;
    Sensor_actuator_interface_DW.obj_a.isSetupComplete = false;
    Sensor_actuator_interface_DW.obj_a.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_1[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &Sensor_actuator_interface_DW.obj_a.subscribeID);
    Sensor_actuator_interface_DW.obj_a.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<Root>/MQTT Subscribe1' */

    /* Start for MATLABSystem: '<Root>/MQTT Subscribe2' */
    Sensor_actuator_interface_DW.obj_e.matlabCodegenIsDeleted = false;
    Sensor_actuator_interface_DW.obj_e.isSetupComplete = false;
    Sensor_actuator_interface_DW.obj_e.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_2[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &Sensor_actuator_interface_DW.obj_e.subscribeID);
    Sensor_actuator_interface_DW.obj_e.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<Root>/MQTT Subscribe2' */

    /* Start for MATLABSystem: '<Root>/MQTT Subscribe3' */
    Sensor_actuator_interface_DW.obj_o.matlabCodegenIsDeleted = false;
    Sensor_actuator_interface_DW.obj_o.isSetupComplete = false;
    Sensor_actuator_interface_DW.obj_o.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_3[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &Sensor_actuator_interface_DW.obj_o.subscribeID);
    Sensor_actuator_interface_DW.obj_o.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<Root>/MQTT Subscribe3' */

    /* Start for MATLABSystem: '<Root>/MQTT Subscribe4' */
    Sensor_actuator_interface_DW.obj_n.matlabCodegenIsDeleted = false;
    Sensor_actuator_interface_DW.obj_n.isSetupComplete = false;
    Sensor_actuator_interface_DW.obj_n.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_4[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &Sensor_actuator_interface_DW.obj_n.subscribeID);
    Sensor_actuator_interface_DW.obj_n.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<Root>/MQTT Subscribe4' */

    /* Start for MATLABSystem: '<Root>/MQTT Subscribe5' */
    Sensor_actuator_interface_DW.obj_l.matlabCodegenIsDeleted = false;
    Sensor_actuator_interface_DW.obj_l.isSetupComplete = false;
    Sensor_actuator_interface_DW.obj_l.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_5[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &Sensor_actuator_interface_DW.obj_l.subscribeID);
    Sensor_actuator_interface_DW.obj_l.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<Root>/MQTT Subscribe5' */

    /* Start for MATLABSystem: '<Root>/MQTT Publish' */
    Sensor_actuator_interface_DW.obj_d.isInitialized = 1;
    MW_MQTT_publish_setup();

    /* Start for MATLABSystem: '<Root>/MQTT Publish1' */
    Sensor_actuator_interface_DW.obj.isInitialized = 1;
    MW_MQTT_publish_setup();
  }
}

/* Model terminate function */
void Sensor_actuator_interface_terminate(void)
{
  /* Terminate for MATLABSystem: '<Root>/MQTT Subscribe6' */
  if (!Sensor_actuator_interface_DW.obj_p.matlabCodegenIsDeleted) {
    Sensor_actuator_interface_DW.obj_p.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/MQTT Subscribe6' */
  /* Terminate for MATLABSystem: '<Root>/MQTT Subscribe1' */
  if (!Sensor_actuator_interface_DW.obj_a.matlabCodegenIsDeleted) {
    Sensor_actuator_interface_DW.obj_a.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/MQTT Subscribe1' */
  /* Terminate for MATLABSystem: '<Root>/MQTT Subscribe2' */
  if (!Sensor_actuator_interface_DW.obj_e.matlabCodegenIsDeleted) {
    Sensor_actuator_interface_DW.obj_e.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/MQTT Subscribe2' */
  /* Terminate for MATLABSystem: '<Root>/MQTT Subscribe3' */
  if (!Sensor_actuator_interface_DW.obj_o.matlabCodegenIsDeleted) {
    Sensor_actuator_interface_DW.obj_o.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/MQTT Subscribe3' */
  /* Terminate for MATLABSystem: '<Root>/MQTT Subscribe4' */
  if (!Sensor_actuator_interface_DW.obj_n.matlabCodegenIsDeleted) {
    Sensor_actuator_interface_DW.obj_n.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/MQTT Subscribe4' */
  /* Terminate for MATLABSystem: '<Root>/MQTT Subscribe5' */
  if (!Sensor_actuator_interface_DW.obj_l.matlabCodegenIsDeleted) {
    Sensor_actuator_interface_DW.obj_l.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/MQTT Subscribe5' */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
