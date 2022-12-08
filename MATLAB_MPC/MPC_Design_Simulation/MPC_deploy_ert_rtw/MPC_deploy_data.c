/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: MPC_deploy_data.c
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

#include "MPC_deploy.h"
#include "MPC_deploy_private.h"

/* Block parameters (default storage) */
P_MPC_deploy_T MPC_deploy_P = {
  /* Expression: 1/6.6
   * Referenced by: '<S4>/[Hz] to [L//min]'
   */
  0.15151515151515152,

  /* Expression: 1/60
   * Referenced by: '<S4>/[L//min] to [Kg//s]'
   */
  0.016666666666666666,

  /* Expression: lastx+xoff
   * Referenced by: '<S5>/last_x'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },

  /* Expression: lastu+uoff
   * Referenced by: '<S5>/last_mv'
   */
  { 0.0, 0.0 },

  /* Expression: 40.*ones(5,1)
   * Referenced by: '<Root>/Constant'
   */
  { 40.0, 40.0, 40.0, 40.0, 40.0 },

  /* Expression: zeros(2,1)
   * Referenced by: '<S3>/umin_zero'
   */
  { 0.0, 0.0 },

  /* Expression: zeros(2,1)
   * Referenced by: '<S3>/umax_zero'
   */
  { 0.0, 0.0 },

  /* Expression: zeros(5,1)
   * Referenced by: '<S3>/ymin_zero'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0 },

  /* Expression: zeros(5,1)
   * Referenced by: '<S3>/ymax_zero'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0 },

  /* Expression: zeros(1,2)
   * Referenced by: '<S3>/E_zero'
   */
  { 0.0, 0.0 },

  /* Expression: MVscale(:,ones(1,max(nCC,1)))'
   * Referenced by: '<S5>/umin_scale4'
   */
  { 1.0, 1.0 },

  /* Expression: zeros(1,5)
   * Referenced by: '<S3>/F_zero'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0 },

  /* Expression: Yscale(:,ones(1,max(nCC,1)))'
   * Referenced by: '<S5>/ymin_scale1'
   */
  { 40.0, 40.0, 40.0, 40.0, 40.0 },

  /* Expression: zeros(1,1)
   * Referenced by: '<S3>/G_zero'
   */
  0.0,

  /* Expression: zeros(1,3)
   * Referenced by: '<S3>/S_zero'
   */
  { 0.0, 0.0, 0.0 },

  /* Expression: MDscale(:,ones(1,max(nCC,1)))'
   * Referenced by: '<S5>/ymin_scale2'
   */
  { 1.0, 10.0, 40.0 },

  /* Expression: zeros(1,1)
   * Referenced by: '<S3>/switch_zero'
   */
  0.0,

  /* Expression: zeros(2,1)
   * Referenced by: '<S3>/ext.mv_zero'
   */
  { 0.0, 0.0 },

  /* Expression: RMVscale
   * Referenced by: '<S5>/ext.mv_scale'
   */
  { 1.0, 1.0 },

  /* Expression: zeros(2,1)
   * Referenced by: '<S3>/mv.target_zero'
   */
  { 0.0, 0.0 },

  /* Expression: RMVscale
   * Referenced by: '<S5>/ext.mv_scale1'
   */
  { 1.0, 1.0 },

  /* Expression: zeros(5,1)
   * Referenced by: '<S3>/y.wt_zero'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0 },

  /* Expression: zeros(2,1)
   * Referenced by: '<S3>/u.wt_zero'
   */
  { 0.0, 0.0 },

  /* Expression: zeros(2,1)
   * Referenced by: '<S3>/du.wt_zero'
   */
  { 0.0, 0.0 },

  /* Expression: zeros(1,1)
   * Referenced by: '<S3>/ecr.wt_zero'
   */
  0.0,

  /* Expression: MVscale
   * Referenced by: '<S5>/umin_scale1'
   */
  { 1.0, 1.0 },

  /* Expression: 100
   * Referenced by: '<S1>/Gain'
   */
  100.0,

  /* Expression: iA
   * Referenced by: '<S5>/Memory'
   */
  { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  }
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
