/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: MPC_deploy.h
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

#ifndef RTW_HEADER_MPC_deploy_h_
#define RTW_HEADER_MPC_deploy_h_
#include <math.h>
#include <string.h>
#include <stddef.h>
#ifndef MPC_deploy_COMMON_INCLUDES_
#define MPC_deploy_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "MW_MQTT.h"
#endif                                 /* MPC_deploy_COMMON_INCLUDES_ */

#include "MPC_deploy_types.h"
#include "rt_nonfinite.h"
#include "rtGetInf.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmStepTask
#define rtmStepTask(rtm, idx)          ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmTaskCounter
#define rtmTaskCounter(rtm, idx)       ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

/* Block signals (default storage) */
typedef struct {
  real_T rseq[50];
  real_T vseq[44];
  real_T unusedU0[26];
  real_T b_Mlim[26];
  real_T cTol[26];
  real_T dv[26];
  uint8_T Topic[128];
  real_T xk[10];
  real_T xest[10];                     /* '<S25>/optimizer' */
  real_T e_a[10];
  real_T RLinv[9];
  real_T D[9];
  real_T b_H[9];
  real_T U[9];
  real_T TL[9];
  real_T QQ[9];
  real_T RR[9];
  real_T c_A[9];
  int16_T iAnew[26];
  int16_T iC[26];
  real_T Opt[6];
  real_T Rhs[6];
  real_T y_innov[5];
  real_T b_a[5];
  real_T f[3];
  real_T zopt[3];
  real_T r[3];
  real_T z[3];
  real_T b_Ac[3];
  real_T work[3];
  real_T b_varargout_2[2];
  real_T b_varargout_2_m[2];
  char* payLoadStr;
  real_T status;
  real_T b_Kx;
  real_T b_Kr;
  real_T rtb_umin_scale1_idx_0;
  real_T rtb_umin_scale1_idx_1;
  real_T v_idx_0;
  real_T v_idx_1;
  real_T v_idx_2;
  real_T v_idx_3;
  real_T rMin;
  real_T Xnorm0;
  real_T cMin;
  real_T cVal;
  real_T zTa;
  real_T t2;
  real_T b_Ac_tmp;
  real_T atmp;
  real_T beta1;
  real_T tau_idx_0;
  real_T tau_idx_1;
  real_T temp;
  real_T c;
  real_T scale;
  char_T topicStr[7];
  int32_T i;
  int32_T b_i;
  int32_T b_k;
  int32_T f_i;
  int32_T i_c;
  int32_T i_k;
  int32_T U_tmp;
  int32_T i_cx;
  int32_T b_i_b;
  int32_T j;
  int32_T f_i_p;
  uint32_T stringPayloadLen;
} B_MPC_deploy_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  codertarget_linux_blocks_MQ_m_T obj; /* '<S1>/MQTT Publish1' */
  codertarget_linux_blocks_MQ_m_T obj_f;/* '<S1>/MQTT Publish' */
  codertarget_linux_blocks_MQTT_T obj_g;/* '<S4>/MQTT Subscribe8' */
  codertarget_linux_blocks_MQTT_T obj_k;/* '<S4>/MQTT Subscribe7' */
  codertarget_linux_blocks_MQTT_T obj_m;/* '<S4>/MQTT Subscribe6' */
  codertarget_linux_blocks_MQTT_T obj_o;/* '<S4>/MQTT Subscribe5' */
  codertarget_linux_blocks_MQTT_T obj_h;/* '<S4>/MQTT Subscribe4' */
  codertarget_linux_blocks_MQTT_T obj_e;/* '<S4>/MQTT Subscribe3' */
  codertarget_linux_blocks_MQTT_T obj_n;/* '<S4>/MQTT Subscribe2' */
  codertarget_linux_blocks_MQTT_T obj_l;/* '<S4>/MQTT Subscribe1' */
  real_T last_mv_DSTATE[2];            /* '<S5>/last_mv' */
  real_T TmpRTBAtoptimizerInport3_Buffer[5];/* synthesized block */
  real_T TmpRTBAtoptimizerInport5_Buffer[3];/* synthesized block */
  real_T last_x_PreviousInput[10];     /* '<S5>/last_x' */
  boolean_T Memory_PreviousInput[26];  /* '<S5>/Memory' */
} DW_MPC_deploy_T;

/* Parameters (default storage) */
struct P_MPC_deploy_T_ {
  real_T HztoLmin_Gain;                /* Expression: 1/6.6
                                        * Referenced by: '<S4>/[Hz] to [L//min]'
                                        */
  real_T LmintoKgs_Gain;               /* Expression: 1/60
                                        * Referenced by: '<S4>/[L//min] to [Kg//s]'
                                        */
  real_T last_x_InitialCondition[10];  /* Expression: lastx+xoff
                                        * Referenced by: '<S5>/last_x'
                                        */
  real_T last_mv_InitialCondition[2];  /* Expression: lastu+uoff
                                        * Referenced by: '<S5>/last_mv'
                                        */
  real_T Constant_Value[5];            /* Expression: 40.*ones(5,1)
                                        * Referenced by: '<Root>/Constant'
                                        */
  real_T umin_zero_Value[2];           /* Expression: zeros(2,1)
                                        * Referenced by: '<S3>/umin_zero'
                                        */
  real_T umax_zero_Value[2];           /* Expression: zeros(2,1)
                                        * Referenced by: '<S3>/umax_zero'
                                        */
  real_T ymin_zero_Value[5];           /* Expression: zeros(5,1)
                                        * Referenced by: '<S3>/ymin_zero'
                                        */
  real_T ymax_zero_Value[5];           /* Expression: zeros(5,1)
                                        * Referenced by: '<S3>/ymax_zero'
                                        */
  real_T E_zero_Value[2];              /* Expression: zeros(1,2)
                                        * Referenced by: '<S3>/E_zero'
                                        */
  real_T umin_scale4_Gain[2];      /* Expression: MVscale(:,ones(1,max(nCC,1)))'
                                    * Referenced by: '<S5>/umin_scale4'
                                    */
  real_T F_zero_Value[5];              /* Expression: zeros(1,5)
                                        * Referenced by: '<S3>/F_zero'
                                        */
  real_T ymin_scale1_Gain[5];       /* Expression: Yscale(:,ones(1,max(nCC,1)))'
                                     * Referenced by: '<S5>/ymin_scale1'
                                     */
  real_T G_zero_Value;                 /* Expression: zeros(1,1)
                                        * Referenced by: '<S3>/G_zero'
                                        */
  real_T S_zero_Value[3];              /* Expression: zeros(1,3)
                                        * Referenced by: '<S3>/S_zero'
                                        */
  real_T ymin_scale2_Gain[3];      /* Expression: MDscale(:,ones(1,max(nCC,1)))'
                                    * Referenced by: '<S5>/ymin_scale2'
                                    */
  real_T switch_zero_Value;            /* Expression: zeros(1,1)
                                        * Referenced by: '<S3>/switch_zero'
                                        */
  real_T extmv_zero_Value[2];          /* Expression: zeros(2,1)
                                        * Referenced by: '<S3>/ext.mv_zero'
                                        */
  real_T extmv_scale_Gain[2];          /* Expression: RMVscale
                                        * Referenced by: '<S5>/ext.mv_scale'
                                        */
  real_T mvtarget_zero_Value[2];       /* Expression: zeros(2,1)
                                        * Referenced by: '<S3>/mv.target_zero'
                                        */
  real_T extmv_scale1_Gain[2];         /* Expression: RMVscale
                                        * Referenced by: '<S5>/ext.mv_scale1'
                                        */
  real_T ywt_zero_Value[5];            /* Expression: zeros(5,1)
                                        * Referenced by: '<S3>/y.wt_zero'
                                        */
  real_T uwt_zero_Value[2];            /* Expression: zeros(2,1)
                                        * Referenced by: '<S3>/u.wt_zero'
                                        */
  real_T duwt_zero_Value[2];           /* Expression: zeros(2,1)
                                        * Referenced by: '<S3>/du.wt_zero'
                                        */
  real_T ecrwt_zero_Value;             /* Expression: zeros(1,1)
                                        * Referenced by: '<S3>/ecr.wt_zero'
                                        */
  real_T umin_scale1_Gain[2];          /* Expression: MVscale
                                        * Referenced by: '<S5>/umin_scale1'
                                        */
  real_T Gain_Gain;                    /* Expression: 100
                                        * Referenced by: '<S1>/Gain'
                                        */
  boolean_T Memory_InitialCondition[26];/* Expression: iA
                                         * Referenced by: '<S5>/Memory'
                                         */
};

/* Real-time Model Data Structure */
struct tag_RTM_MPC_deploy_T {
  const char_T *errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint8_T TID[2];
    } TaskCounters;

    struct {
      boolean_T TID0_1;
    } RateInteraction;
  } Timing;
};

/* Block parameters (default storage) */
extern P_MPC_deploy_T MPC_deploy_P;

/* Block signals (default storage) */
extern B_MPC_deploy_T MPC_deploy_B;

/* Block states (default storage) */
extern DW_MPC_deploy_T MPC_deploy_DW;

/* External function called from main */
extern void MPC_deploy_SetEventsForThisBaseStep(boolean_T *eventFlags);

/* Model entry point functions */
extern void MPC_deploy_SetEventsForThisBaseStep(boolean_T *eventFlags);
extern void MPC_deploy_initialize(void);
extern void MPC_deploy_step(int_T tid);
extern void MPC_deploy_terminate(void);

/* Real-time Model object */
extern RT_MODEL_MPC_deploy_T *const MPC_deploy_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S5>/Data Type Conversion14' : Unused code path elimination
 * Block '<S5>/Data Type Conversion15' : Unused code path elimination
 * Block '<S6>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S7>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S8>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S9>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S10>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S11>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S12>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S13>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S14>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S15>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S16>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S17>/Matrix Dimension Check' : Unused code path elimination
 * Block '<S18>/Vector Dimension Check' : Unused code path elimination
 * Block '<S19>/Vector Dimension Check' : Unused code path elimination
 * Block '<S20>/Vector Dimension Check' : Unused code path elimination
 * Block '<S21>/Vector Dimension Check' : Unused code path elimination
 * Block '<S22>/Vector Dimension Check' : Unused code path elimination
 * Block '<S23>/Vector Dimension Check' : Unused code path elimination
 * Block '<S24>/Vector Dimension Check' : Unused code path elimination
 * Block '<S5>/constant' : Unused code path elimination
 * Block '<S5>/umin_scale2' : Unused code path elimination
 * Block '<S5>/umin_scale3' : Unused code path elimination
 * Block '<S5>/umin_scale5' : Unused code path elimination
 * Block '<S5>/ym_zero' : Unused code path elimination
 * Block '<S3>/m_zero' : Unused code path elimination
 * Block '<S3>/p_zero' : Unused code path elimination
 * Block '<S5>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion10' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion11' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion12' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion13' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion2' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion3' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion4' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion5' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion6' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion7' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion8' : Eliminate redundant data type conversion
 * Block '<S5>/Data Type Conversion9' : Eliminate redundant data type conversion
 * Block '<S5>/E Conversion' : Eliminate redundant data type conversion
 * Block '<S5>/F Conversion' : Eliminate redundant data type conversion
 * Block '<S5>/G Conversion' : Eliminate redundant data type conversion
 * Block '<S5>/Reshape' : Reshape block reduction
 * Block '<S5>/Reshape1' : Reshape block reduction
 * Block '<S5>/Reshape2' : Reshape block reduction
 * Block '<S5>/Reshape3' : Reshape block reduction
 * Block '<S5>/Reshape4' : Reshape block reduction
 * Block '<S5>/Reshape5' : Reshape block reduction
 * Block '<S5>/S Conversion' : Eliminate redundant data type conversion
 * Block '<S5>/mo or x Conversion' : Eliminate redundant data type conversion
 */

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
 * '<Root>' : 'MPC_deploy'
 * '<S1>'   : 'MPC_deploy/Actuators'
 * '<S2>'   : 'MPC_deploy/Data_plots'
 * '<S3>'   : 'MPC_deploy/MPC Controller'
 * '<S4>'   : 'MPC_deploy/Sensors'
 * '<S5>'   : 'MPC_deploy/MPC Controller/MPC'
 * '<S6>'   : 'MPC_deploy/MPC Controller/MPC/MPC Matrix Signal Check'
 * '<S7>'   : 'MPC_deploy/MPC Controller/MPC/MPC Matrix Signal Check1'
 * '<S8>'   : 'MPC_deploy/MPC Controller/MPC/MPC Matrix Signal Check2'
 * '<S9>'   : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check'
 * '<S10>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check1'
 * '<S11>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check2'
 * '<S12>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check3'
 * '<S13>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check4'
 * '<S14>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check5'
 * '<S15>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check6'
 * '<S16>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check7'
 * '<S17>'  : 'MPC_deploy/MPC Controller/MPC/MPC Preview Signal Check8'
 * '<S18>'  : 'MPC_deploy/MPC Controller/MPC/MPC Scalar Signal Check'
 * '<S19>'  : 'MPC_deploy/MPC Controller/MPC/MPC Scalar Signal Check1'
 * '<S20>'  : 'MPC_deploy/MPC Controller/MPC/MPC Scalar Signal Check2'
 * '<S21>'  : 'MPC_deploy/MPC Controller/MPC/MPC Vector Signal Check'
 * '<S22>'  : 'MPC_deploy/MPC Controller/MPC/MPC Vector Signal Check1'
 * '<S23>'  : 'MPC_deploy/MPC Controller/MPC/MPC Vector Signal Check11'
 * '<S24>'  : 'MPC_deploy/MPC Controller/MPC/MPC Vector Signal Check6'
 * '<S25>'  : 'MPC_deploy/MPC Controller/MPC/optimizer'
 * '<S26>'  : 'MPC_deploy/MPC Controller/MPC/optimizer/optimizer'
 */
#endif                                 /* RTW_HEADER_MPC_deploy_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
