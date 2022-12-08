/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: MPC_deploy_types.h
 *
 * Code generated for Simulink model 'MPC_deploy'.
 *
 * Model version                  : 2.20
 * Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
 * C/C++ source code generated on : Thu Aug 11 15:41:41 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_MPC_deploy_types_h_
#define RTW_HEADER_MPC_deploy_types_h_
#include "rtwtypes.h"

/* Model Code Variants */
#ifndef DEFINED_TYPEDEF_FOR_struct_qYRJtcce7MM7XuQ3AAWdMD_
#define DEFINED_TYPEDEF_FOR_struct_qYRJtcce7MM7XuQ3AAWdMD_

typedef struct {
  real_T MaxIterations;
  real_T ConstraintTolerance;
  boolean_T UseWarmStart;
} struct_qYRJtcce7MM7XuQ3AAWdMD;

#endif

#ifndef DEFINED_TYPEDEF_FOR_struct_SmvKLCDySlKdToNTroAGyF_
#define DEFINED_TYPEDEF_FOR_struct_SmvKLCDySlKdToNTroAGyF_

typedef struct {
  real_T MaxIterations;
  real_T ConstraintTolerance;
  real_T OptimalityTolerance;
  real_T ComplementarityTolerance;
  real_T StepTolerance;
} struct_SmvKLCDySlKdToNTroAGyF;

#endif

/* Custom Type definition for MATLABSystem: '<S1>/MQTT Publish1' */
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

#ifndef typedef_cell_wrap_MPC_deploy_T
#define typedef_cell_wrap_MPC_deploy_T

typedef struct tag_PMfBDzoakfdM9QAdfx2o6D cell_wrap_MPC_deploy_T;

#endif                                 /*typedef_cell_wrap_MPC_deploy_T*/

#ifndef struct_tag_52FCbZCsz66rwLK9XCxJXH
#define struct_tag_52FCbZCsz66rwLK9XCxJXH

struct tag_52FCbZCsz66rwLK9XCxJXH
{
  int32_T isInitialized;
  cell_wrap_MPC_deploy_T inputVarSize;
  MW_MQTT_Data_Type MW_dataType;
};

#endif                                 /*struct_tag_52FCbZCsz66rwLK9XCxJXH*/

#ifndef typedef_codertarget_linux_blocks_MQ_m_T
#define typedef_codertarget_linux_blocks_MQ_m_T

typedef struct tag_52FCbZCsz66rwLK9XCxJXH codertarget_linux_blocks_MQ_m_T;

#endif                               /*typedef_codertarget_linux_blocks_MQ_m_T*/

/* Parameters (default storage) */
typedef struct P_MPC_deploy_T_ P_MPC_deploy_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_MPC_deploy_T RT_MODEL_MPC_deploy_T;

#endif                                 /* RTW_HEADER_MPC_deploy_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
