/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: emul_flow_sens.c
 *
 * Code generated for Simulink model 'emul_flow_sens'.
 *
 * Model version                  : 1.2
 * Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
 * C/C++ source code generated on : Thu Aug 11 13:24:33 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Atmel->AVR
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "emul_flow_sens.h"
#include "emul_flow_sens_private.h"

/* Block states (default storage) */
DW_emul_flow_sens_T emul_flow_sens_DW;

/* Real-time model */
static RT_MODEL_emul_flow_sens_T emul_flow_sens_M_;
RT_MODEL_emul_flow_sens_T *const emul_flow_sens_M = &emul_flow_sens_M_;
real_T rt_roundd_snf(real_T u)
{
  real_T y;
  if (fabs(u) < 4.503599627370496E+15) {
    if (u >= 0.5) {
      y = floor(u + 0.5);
    } else if (u > -0.5) {
      y = u * 0.0;
    } else {
      y = ceil(u - 0.5);
    }
  } else {
    y = u;
  }

  return y;
}

/* Model step function */
void emul_flow_sens_step(void)
{
  real_T rtb_PulseGenerator;
  real_T tmp;
  uint8_T tmp_0;

  /* MATLABSystem: '<Root>/Digital Output1' incorporates:
   *  Constant: '<Root>/Constant'
   */
  tmp = rt_roundd_snf(emul_flow_sens_P.Constant_Value);
  if (tmp < 256.0) {
    if (tmp >= 0.0) {
      tmp_0 = (uint8_T)tmp;
    } else {
      tmp_0 = 0U;
    }
  } else {
    tmp_0 = MAX_uint8_T;
  }

  writeDigitalPin(11, tmp_0);

  /* End of MATLABSystem: '<Root>/Digital Output1' */

  /* DiscretePulseGenerator: '<Root>/Pulse Generator' */
  rtb_PulseGenerator = (emul_flow_sens_DW.clockTickCounter <
                        emul_flow_sens_P.PulseGenerator_Duty) &&
    (emul_flow_sens_DW.clockTickCounter >= 0L) ?
    emul_flow_sens_P.PulseGenerator_Amp : 0.0;
  if (emul_flow_sens_DW.clockTickCounter >=
      emul_flow_sens_P.PulseGenerator_Period - 1.0) {
    emul_flow_sens_DW.clockTickCounter = 0L;
  } else {
    emul_flow_sens_DW.clockTickCounter++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator' */

  /* MATLABSystem: '<Root>/Digital Output' */
  tmp = rt_roundd_snf(rtb_PulseGenerator);
  if (tmp < 256.0) {
    if (tmp >= 0.0) {
      tmp_0 = (uint8_T)tmp;
    } else {
      tmp_0 = 0U;
    }
  } else {
    tmp_0 = MAX_uint8_T;
  }

  writeDigitalPin(13, tmp_0);

  /* End of MATLABSystem: '<Root>/Digital Output' */

  /* MATLABSystem: '<Root>/Digital Output2' */
  tmp = rt_roundd_snf(rtb_PulseGenerator);
  if (tmp < 256.0) {
    if (tmp >= 0.0) {
      tmp_0 = (uint8_T)tmp;
    } else {
      tmp_0 = 0U;
    }
  } else {
    tmp_0 = MAX_uint8_T;
  }

  writeDigitalPin(9, tmp_0);

  /* End of MATLABSystem: '<Root>/Digital Output2' */
}

/* Model initialize function */
void emul_flow_sens_initialize(void)
{
  /* Start for MATLABSystem: '<Root>/Digital Output1' */
  emul_flow_sens_DW.obj_h.matlabCodegenIsDeleted = false;
  emul_flow_sens_DW.obj_h.isInitialized = 1L;
  digitalIOSetup(11, 1);
  emul_flow_sens_DW.obj_h.isSetupComplete = true;

  /* Start for MATLABSystem: '<Root>/Digital Output' */
  emul_flow_sens_DW.obj_g.matlabCodegenIsDeleted = false;
  emul_flow_sens_DW.obj_g.isInitialized = 1L;
  digitalIOSetup(13, 1);
  emul_flow_sens_DW.obj_g.isSetupComplete = true;

  /* Start for MATLABSystem: '<Root>/Digital Output2' */
  emul_flow_sens_DW.obj.matlabCodegenIsDeleted = false;
  emul_flow_sens_DW.obj.isInitialized = 1L;
  digitalIOSetup(9, 1);
  emul_flow_sens_DW.obj.isSetupComplete = true;
}

/* Model terminate function */
void emul_flow_sens_terminate(void)
{
  /* Terminate for MATLABSystem: '<Root>/Digital Output1' */
  if (!emul_flow_sens_DW.obj_h.matlabCodegenIsDeleted) {
    emul_flow_sens_DW.obj_h.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/Digital Output1' */

  /* Terminate for MATLABSystem: '<Root>/Digital Output' */
  if (!emul_flow_sens_DW.obj_g.matlabCodegenIsDeleted) {
    emul_flow_sens_DW.obj_g.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/Digital Output' */

  /* Terminate for MATLABSystem: '<Root>/Digital Output2' */
  if (!emul_flow_sens_DW.obj.matlabCodegenIsDeleted) {
    emul_flow_sens_DW.obj.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<Root>/Digital Output2' */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
