/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: emul_flow_sens.h
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

#ifndef RTW_HEADER_emul_flow_sens_h_
#define RTW_HEADER_emul_flow_sens_h_
#include <math.h>
#include <stddef.h>
#ifndef emul_flow_sens_COMMON_INCLUDES_
#define emul_flow_sens_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "MW_arduino_digitalio.h"
#endif                                 /* emul_flow_sens_COMMON_INCLUDES_ */

#include "emul_flow_sens_types.h"
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block states (default storage) for system '<Root>' */
typedef struct {
  codertarget_arduinobase_block_T obj; /* '<Root>/Digital Output2' */
  codertarget_arduinobase_block_T obj_h;/* '<Root>/Digital Output1' */
  codertarget_arduinobase_block_T obj_g;/* '<Root>/Digital Output' */
  int32_T clockTickCounter;            /* '<Root>/Pulse Generator' */
} DW_emul_flow_sens_T;

/* Parameters (default storage) */
struct P_emul_flow_sens_T_ {
  real_T Constant_Value;               /* Expression: 1
                                        * Referenced by: '<Root>/Constant'
                                        */
  real_T PulseGenerator_Amp;           /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_Period;     /* Computed Parameter: PulseGenerator_Period
                                     * Referenced by: '<Root>/Pulse Generator'
                                     */
  real_T PulseGenerator_Duty;         /* Computed Parameter: PulseGenerator_Duty
                                       * Referenced by: '<Root>/Pulse Generator'
                                       */
  real_T PulseGenerator_PhaseDelay;    /* Expression: 0
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_emul_flow_sens_T {
  const char_T *errorStatus;
};

/* Block parameters (default storage) */
extern P_emul_flow_sens_T emul_flow_sens_P;

/* Block states (default storage) */
extern DW_emul_flow_sens_T emul_flow_sens_DW;

/* Model entry point functions */
extern void emul_flow_sens_initialize(void);
extern void emul_flow_sens_step(void);
extern void emul_flow_sens_terminate(void);

/* Real-time Model object */
extern RT_MODEL_emul_flow_sens_T *const emul_flow_sens_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

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
 * '<Root>' : 'emul_flow_sens'
 */
#endif                                 /* RTW_HEADER_emul_flow_sens_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
