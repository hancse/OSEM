/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: MPC_deploy.c
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

/* Block signals (default storage) */
B_MPC_deploy_T MPC_deploy_B;

/* Block states (default storage) */
DW_MPC_deploy_T MPC_deploy_DW;

/* Real-time model */
static RT_MODEL_MPC_deploy_T MPC_deploy_M_;
RT_MODEL_MPC_deploy_T *const MPC_deploy_M = &MPC_deploy_M_;

/* Forward declaration for local functions */
static void MPC_deploy_Unconstrained(const real_T b_Hinv[9], const real_T f[3],
  real_T x[3], int16_T n);
static real_T MPC_deploy_norm(const real_T x[3]);
static void MPC_deploy_abs(const real_T x[3], real_T y[3]);
static real_T MPC_deploy_maximum(const real_T x[3]);
static void MPC_deploy_abs_l(const real_T x[26], real_T y[26]);
static void MPC_deploy_maximum2(const real_T x[26], real_T y, real_T ex[26]);
static real_T MPC_deploy_xnrm2(int32_T n, const real_T x[9], int32_T ix0);
static void MPC_deploy_xgemv(int32_T b_m, int32_T n, const real_T b_A[9],
  int32_T ia0, const real_T x[9], int32_T ix0, real_T y[3]);
static void MPC_deploy_xgerc(int32_T b_m, int32_T n, real_T alpha1, int32_T ix0,
  const real_T y[3], real_T b_A[9], int32_T ia0);
static void MPC_deploy_qr(const real_T b_A[9], real_T Q[9], real_T R[9]);
static real_T MPC_deploy_KWIKfactor(const real_T b_Ac[78], const int16_T iC[26],
  int16_T nA, const real_T b_Linv[9], real_T RLinv[9], real_T D[9], real_T b_H[9],
  int16_T n);
static real_T MPC_deploy_mtimes(const real_T b_A[3], const real_T B[3]);
static void MPC_deploy_DropConstraint(int16_T kDrop, int16_T iA[26], int16_T *nA,
  int16_T iC[26]);
static void MPC_deploy_qpkwik(const real_T b_Linv[9], const real_T b_Hinv[9],
  const real_T f[3], const real_T b_Ac[78], const real_T b[26], int16_T iA[26],
  int16_T maxiter, real_T FeasTol, real_T x[3], real_T lambda[26], real_T
  *status);
static void rate_monotonic_scheduler(void);

/*
 * Set which subrates need to run this base step (base rate always runs).
 * This function must be called prior to calling the model step function
 * in order to "remember" which rates need to run this base step.  The
 * buffering of events allows for overlapping preemption.
 */
void MPC_deploy_SetEventsForThisBaseStep(boolean_T *eventFlags)
{
  /* Task runs when its counter is zero, computed via rtmStepTask macro */
  eventFlags[1] = ((boolean_T)rtmStepTask(MPC_deploy_M, 1));
}

/*
 *   This function updates active task flag for each subrate
 * and rate transition flags for tasks that exchange data.
 * The function assumes rate-monotonic multitasking scheduler.
 * The function must be called at model base rate so that
 * the generated code self-manages all its subrates and rate
 * transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* To ensure a deterministic data transfer between two rates,
   * data is transferred at the priority of a fast task and the frequency
   * of the slow task.  The following flags indicate when the data transfer
   * happens.  That is, a rate interaction flag is set true when both rates
   * will run, and false otherwise.
   */

  /* tid 0 shares data with slower tid rate: 1 */
  MPC_deploy_M->Timing.RateInteraction.TID0_1 =
    (MPC_deploy_M->Timing.TaskCounters.TID[1] == 0);

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (MPC_deploy_M->Timing.TaskCounters.TID[1])++;
  if ((MPC_deploy_M->Timing.TaskCounters.TID[1]) > 59) {/* Sample time: [60.0s, 0.0s] */
    MPC_deploy_M->Timing.TaskCounters.TID[1] = 0;
  }
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_Unconstrained(const real_T b_Hinv[9], const real_T f[3],
  real_T x[3], int16_T n)
{
  int32_T i;
  for (i = 1; i - 1 < n; i++) {
    x[(int16_T)i - 1] = (-b_Hinv[(int16_T)i - 1] * f[0] + -b_Hinv[(int16_T)i + 2]
                         * f[1]) + -b_Hinv[(int16_T)i + 5] * f[2];
  }
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static real_T MPC_deploy_norm(const real_T x[3])
{
  real_T absxk;
  real_T scale;
  real_T t;
  real_T y;
  scale = 3.3121686421112381E-170;
  absxk = fabs(x[0]);
  if (absxk > 3.3121686421112381E-170) {
    y = 1.0;
    scale = absxk;
  } else {
    t = absxk / 3.3121686421112381E-170;
    y = t * t;
  }

  absxk = fabs(x[1]);
  if (absxk > scale) {
    t = scale / absxk;
    y = y * t * t + 1.0;
    scale = absxk;
  } else {
    t = absxk / scale;
    y += t * t;
  }

  absxk = fabs(x[2]);
  if (absxk > scale) {
    t = scale / absxk;
    y = y * t * t + 1.0;
    scale = absxk;
  } else {
    t = absxk / scale;
    y += t * t;
  }

  return scale * sqrt(y);
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_abs(const real_T x[3], real_T y[3])
{
  y[0] = fabs(x[0]);
  y[1] = fabs(x[1]);
  y[2] = fabs(x[2]);
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static real_T MPC_deploy_maximum(const real_T x[3])
{
  real_T ex;
  int32_T idx;
  int32_T k;
  boolean_T exitg1;
  if (!rtIsNaN(x[0])) {
    idx = 1;
  } else {
    idx = 0;
    k = 2;
    exitg1 = false;
    while ((!exitg1) && (k < 4)) {
      if (!rtIsNaN(x[k - 1])) {
        idx = k;
        exitg1 = true;
      } else {
        k++;
      }
    }
  }

  if (idx == 0) {
    ex = x[0];
  } else {
    ex = x[idx - 1];
    while (idx + 1 <= 3) {
      if (ex < x[idx]) {
        ex = x[idx];
      }

      idx++;
    }
  }

  return ex;
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_abs_l(const real_T x[26], real_T y[26])
{
  int32_T k;
  for (k = 0; k < 26; k++) {
    y[k] = fabs(x[k]);
  }
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_maximum2(const real_T x[26], real_T y, real_T ex[26])
{
  real_T u0;
  int32_T k;
  for (k = 0; k < 26; k++) {
    u0 = x[k];
    if ((u0 > y) || rtIsNaN(y)) {
      ex[k] = u0;
    } else {
      ex[k] = y;
    }
  }
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static real_T MPC_deploy_xnrm2(int32_T n, const real_T x[9], int32_T ix0)
{
  real_T absxk;
  real_T t;
  real_T y;
  int32_T k;
  int32_T kend;
  y = 0.0;
  if (n >= 1) {
    if (n == 1) {
      y = fabs(x[ix0 - 1]);
    } else {
      MPC_deploy_B.scale = 3.3121686421112381E-170;
      kend = (ix0 + n) - 1;
      for (k = ix0; k <= kend; k++) {
        absxk = fabs(x[k - 1]);
        if (absxk > MPC_deploy_B.scale) {
          t = MPC_deploy_B.scale / absxk;
          y = y * t * t + 1.0;
          MPC_deploy_B.scale = absxk;
        } else {
          t = absxk / MPC_deploy_B.scale;
          y += t * t;
        }
      }

      y = MPC_deploy_B.scale * sqrt(y);
    }
  }

  return y;
}

real_T rt_hypotd_snf(real_T u0, real_T u1)
{
  real_T a;
  real_T y;
  a = fabs(u0);
  y = fabs(u1);
  if (a < y) {
    a /= y;
    y *= sqrt(a * a + 1.0);
  } else if (a > y) {
    y /= a;
    y = sqrt(y * y + 1.0) * a;
  } else {
    if (!rtIsNaN(y)) {
      y = a * 1.4142135623730951;
    }
  }

  return y;
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_xgemv(int32_T b_m, int32_T n, const real_T b_A[9],
  int32_T ia0, const real_T x[9], int32_T ix0, real_T y[3])
{
  int32_T b;
  int32_T b_iy;
  int32_T d;
  int32_T ia;
  int32_T iac;
  int32_T ix;
  if ((b_m != 0) && (n != 0)) {
    for (b_iy = 0; b_iy < n; b_iy++) {
      y[b_iy] = 0.0;
    }

    b_iy = 0;
    b = (n - 1) * 3 + ia0;
    for (iac = ia0; iac <= b; iac += 3) {
      ix = ix0;
      MPC_deploy_B.c = 0.0;
      d = (iac + b_m) - 1;
      for (ia = iac; ia <= d; ia++) {
        MPC_deploy_B.c += b_A[ia - 1] * x[ix - 1];
        ix++;
      }

      y[b_iy] += MPC_deploy_B.c;
      b_iy++;
    }
  }
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_xgerc(int32_T b_m, int32_T n, real_T alpha1, int32_T ix0,
  const real_T y[3], real_T b_A[9], int32_T ia0)
{
  int32_T b;
  int32_T ijA;
  int32_T ix;
  int32_T j;
  int32_T jA;
  int32_T jy;
  if (!(alpha1 == 0.0)) {
    jA = ia0 - 1;
    jy = 0;
    for (j = 0; j < n; j++) {
      if (y[jy] != 0.0) {
        MPC_deploy_B.temp = y[jy] * alpha1;
        ix = ix0;
        b = b_m + jA;
        for (ijA = jA; ijA < b; ijA++) {
          b_A[ijA] += b_A[ix - 1] * MPC_deploy_B.temp;
          ix++;
        }
      }

      jy++;
      jA += 3;
    }
  }
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_qr(const real_T b_A[9], real_T Q[9], real_T R[9])
{
  int32_T b_coltop;
  int32_T c_lastc;
  int32_T coltop;
  int32_T exitg1;
  int32_T knt;
  boolean_T exitg2;
  MPC_deploy_B.tau_idx_0 = 0.0;
  MPC_deploy_B.tau_idx_1 = 0.0;
  memcpy(&MPC_deploy_B.c_A[0], &b_A[0], 9U * sizeof(real_T));
  MPC_deploy_B.work[0] = 0.0;
  MPC_deploy_B.work[1] = 0.0;
  MPC_deploy_B.work[2] = 0.0;
  MPC_deploy_B.atmp = MPC_deploy_B.c_A[0];
  MPC_deploy_B.beta1 = MPC_deploy_xnrm2(2, MPC_deploy_B.c_A, 2);
  if (MPC_deploy_B.beta1 != 0.0) {
    MPC_deploy_B.beta1 = rt_hypotd_snf(MPC_deploy_B.c_A[0], MPC_deploy_B.beta1);
    if (MPC_deploy_B.c_A[0] >= 0.0) {
      MPC_deploy_B.beta1 = -MPC_deploy_B.beta1;
    }

    if (fabs(MPC_deploy_B.beta1) < 1.0020841800044864E-292) {
      knt = -1;
      do {
        knt++;
        for (c_lastc = 1; c_lastc < 3; c_lastc++) {
          MPC_deploy_B.c_A[c_lastc] *= 9.9792015476736E+291;
        }

        MPC_deploy_B.beta1 *= 9.9792015476736E+291;
        MPC_deploy_B.atmp *= 9.9792015476736E+291;
      } while (!(fabs(MPC_deploy_B.beta1) >= 1.0020841800044864E-292));

      MPC_deploy_B.beta1 = rt_hypotd_snf(MPC_deploy_B.atmp, MPC_deploy_xnrm2(2,
        MPC_deploy_B.c_A, 2));
      if (MPC_deploy_B.atmp >= 0.0) {
        MPC_deploy_B.beta1 = -MPC_deploy_B.beta1;
      }

      MPC_deploy_B.tau_idx_0 = (MPC_deploy_B.beta1 - MPC_deploy_B.atmp) /
        MPC_deploy_B.beta1;
      MPC_deploy_B.atmp = 1.0 / (MPC_deploy_B.atmp - MPC_deploy_B.beta1);
      for (c_lastc = 1; c_lastc < 3; c_lastc++) {
        MPC_deploy_B.c_A[c_lastc] *= MPC_deploy_B.atmp;
      }

      for (c_lastc = 0; c_lastc <= knt; c_lastc++) {
        MPC_deploy_B.beta1 *= 1.0020841800044864E-292;
      }

      MPC_deploy_B.atmp = MPC_deploy_B.beta1;
    } else {
      MPC_deploy_B.tau_idx_0 = (MPC_deploy_B.beta1 - MPC_deploy_B.c_A[0]) /
        MPC_deploy_B.beta1;
      MPC_deploy_B.atmp = 1.0 / (MPC_deploy_B.c_A[0] - MPC_deploy_B.beta1);
      for (knt = 1; knt < 3; knt++) {
        MPC_deploy_B.c_A[knt] *= MPC_deploy_B.atmp;
      }

      MPC_deploy_B.atmp = MPC_deploy_B.beta1;
    }
  }

  MPC_deploy_B.c_A[0] = 1.0;
  if (MPC_deploy_B.tau_idx_0 != 0.0) {
    knt = 3;
    c_lastc = 0;
    while ((knt > 0) && (MPC_deploy_B.c_A[c_lastc + 2] == 0.0)) {
      knt--;
      c_lastc--;
    }

    c_lastc = 2;
    exitg2 = false;
    while ((!exitg2) && (c_lastc > 0)) {
      b_coltop = (c_lastc - 1) * 3 + 3;
      coltop = b_coltop;
      do {
        exitg1 = 0;
        if (coltop + 1 <= b_coltop + knt) {
          if (MPC_deploy_B.c_A[coltop] != 0.0) {
            exitg1 = 1;
          } else {
            coltop++;
          }
        } else {
          c_lastc--;
          exitg1 = 2;
        }
      } while (exitg1 == 0);

      if (exitg1 == 1) {
        exitg2 = true;
      }
    }
  } else {
    knt = 0;
    c_lastc = 0;
  }

  if (knt > 0) {
    MPC_deploy_xgemv(knt, c_lastc, MPC_deploy_B.c_A, 4, MPC_deploy_B.c_A, 1,
                     MPC_deploy_B.work);
    MPC_deploy_xgerc(knt, c_lastc, -MPC_deploy_B.tau_idx_0, 1, MPC_deploy_B.work,
                     MPC_deploy_B.c_A, 4);
  }

  MPC_deploy_B.c_A[0] = MPC_deploy_B.atmp;
  MPC_deploy_B.atmp = MPC_deploy_B.c_A[4];
  MPC_deploy_B.beta1 = MPC_deploy_xnrm2(1, MPC_deploy_B.c_A, 6);
  if (MPC_deploy_B.beta1 != 0.0) {
    MPC_deploy_B.beta1 = rt_hypotd_snf(MPC_deploy_B.c_A[4], MPC_deploy_B.beta1);
    if (MPC_deploy_B.c_A[4] >= 0.0) {
      MPC_deploy_B.beta1 = -MPC_deploy_B.beta1;
    }

    if (fabs(MPC_deploy_B.beta1) < 1.0020841800044864E-292) {
      knt = -1;
      do {
        knt++;
        for (c_lastc = 5; c_lastc < 6; c_lastc++) {
          MPC_deploy_B.c_A[c_lastc] *= 9.9792015476736E+291;
        }

        MPC_deploy_B.beta1 *= 9.9792015476736E+291;
        MPC_deploy_B.atmp *= 9.9792015476736E+291;
      } while (!(fabs(MPC_deploy_B.beta1) >= 1.0020841800044864E-292));

      MPC_deploy_B.beta1 = rt_hypotd_snf(MPC_deploy_B.atmp, MPC_deploy_xnrm2(1,
        MPC_deploy_B.c_A, 6));
      if (MPC_deploy_B.atmp >= 0.0) {
        MPC_deploy_B.beta1 = -MPC_deploy_B.beta1;
      }

      MPC_deploy_B.tau_idx_1 = (MPC_deploy_B.beta1 - MPC_deploy_B.atmp) /
        MPC_deploy_B.beta1;
      MPC_deploy_B.atmp = 1.0 / (MPC_deploy_B.atmp - MPC_deploy_B.beta1);
      for (c_lastc = 5; c_lastc < 6; c_lastc++) {
        MPC_deploy_B.c_A[c_lastc] *= MPC_deploy_B.atmp;
      }

      for (c_lastc = 0; c_lastc <= knt; c_lastc++) {
        MPC_deploy_B.beta1 *= 1.0020841800044864E-292;
      }

      MPC_deploy_B.atmp = MPC_deploy_B.beta1;
    } else {
      MPC_deploy_B.tau_idx_1 = (MPC_deploy_B.beta1 - MPC_deploy_B.c_A[4]) /
        MPC_deploy_B.beta1;
      MPC_deploy_B.atmp = 1.0 / (MPC_deploy_B.c_A[4] - MPC_deploy_B.beta1);
      for (knt = 5; knt < 6; knt++) {
        MPC_deploy_B.c_A[knt] *= MPC_deploy_B.atmp;
      }

      MPC_deploy_B.atmp = MPC_deploy_B.beta1;
    }
  }

  MPC_deploy_B.c_A[4] = 1.0;
  if (MPC_deploy_B.tau_idx_1 != 0.0) {
    knt = 2;
    c_lastc = 3;
    while ((knt > 0) && (MPC_deploy_B.c_A[c_lastc + 2] == 0.0)) {
      knt--;
      c_lastc--;
    }

    c_lastc = 1;
    coltop = 7;
    do {
      exitg1 = 0;
      if (coltop + 1 <= 7 + knt) {
        if (MPC_deploy_B.c_A[coltop] != 0.0) {
          exitg1 = 1;
        } else {
          coltop++;
        }
      } else {
        c_lastc = 0;
        exitg1 = 1;
      }
    } while (exitg1 == 0);
  } else {
    knt = 0;
    c_lastc = 0;
  }

  if (knt > 0) {
    MPC_deploy_xgemv(knt, c_lastc, MPC_deploy_B.c_A, 8, MPC_deploy_B.c_A, 5,
                     MPC_deploy_B.work);
    MPC_deploy_xgerc(knt, c_lastc, -MPC_deploy_B.tau_idx_1, 5, MPC_deploy_B.work,
                     MPC_deploy_B.c_A, 8);
  }

  MPC_deploy_B.c_A[4] = MPC_deploy_B.atmp;
  R[0] = MPC_deploy_B.c_A[0];
  for (knt = 1; knt + 1 < 4; knt++) {
    R[knt] = 0.0;
  }

  MPC_deploy_B.work[0] = 0.0;
  for (knt = 0; knt < 2; knt++) {
    R[knt + 3] = MPC_deploy_B.c_A[knt + 3];
  }

  for (knt = 2; knt + 1 < 4; knt++) {
    R[knt + 3] = 0.0;
  }

  MPC_deploy_B.work[1] = 0.0;
  for (knt = 0; knt < 3; knt++) {
    R[knt + 6] = MPC_deploy_B.c_A[knt + 6];
  }

  MPC_deploy_B.work[2] = 0.0;
  MPC_deploy_B.c_A[8] = 1.0;
  for (knt = 0; knt < 2; knt++) {
    MPC_deploy_B.c_A[7 - knt] = 0.0;
  }

  MPC_deploy_B.c_A[4] = 1.0;
  if (MPC_deploy_B.tau_idx_1 != 0.0) {
    knt = 2;
    c_lastc = 7;
    while ((knt > 0) && (MPC_deploy_B.c_A[c_lastc - 2] == 0.0)) {
      knt--;
      c_lastc--;
    }

    c_lastc = 1;
    b_coltop = 8;
    do {
      exitg1 = 0;
      if (b_coltop <= knt + 7) {
        if (MPC_deploy_B.c_A[b_coltop - 1] != 0.0) {
          exitg1 = 1;
        } else {
          b_coltop++;
        }
      } else {
        c_lastc = 0;
        exitg1 = 1;
      }
    } while (exitg1 == 0);
  } else {
    knt = 0;
    c_lastc = 0;
  }

  if (knt > 0) {
    MPC_deploy_xgemv(knt, c_lastc, MPC_deploy_B.c_A, 8, MPC_deploy_B.c_A, 5,
                     MPC_deploy_B.work);
    MPC_deploy_xgerc(knt, c_lastc, -MPC_deploy_B.tau_idx_1, 5, MPC_deploy_B.work,
                     MPC_deploy_B.c_A, 8);
  }

  for (knt = 5; knt < 6; knt++) {
    MPC_deploy_B.c_A[knt] *= -MPC_deploy_B.tau_idx_1;
  }

  MPC_deploy_B.c_A[4] = 1.0 - MPC_deploy_B.tau_idx_1;
  MPC_deploy_B.c_A[3] = 0.0;
  MPC_deploy_B.c_A[0] = 1.0;
  if (MPC_deploy_B.tau_idx_0 != 0.0) {
    knt = 3;
    c_lastc = 4;
    while ((knt > 0) && (MPC_deploy_B.c_A[c_lastc - 2] == 0.0)) {
      knt--;
      c_lastc--;
    }

    c_lastc = 2;
    exitg2 = false;
    while ((!exitg2) && (c_lastc > 0)) {
      coltop = (c_lastc - 1) * 3 + 4;
      b_coltop = coltop;
      do {
        exitg1 = 0;
        if (b_coltop <= (coltop + knt) - 1) {
          if (MPC_deploy_B.c_A[b_coltop - 1] != 0.0) {
            exitg1 = 1;
          } else {
            b_coltop++;
          }
        } else {
          c_lastc--;
          exitg1 = 2;
        }
      } while (exitg1 == 0);

      if (exitg1 == 1) {
        exitg2 = true;
      }
    }
  } else {
    knt = 0;
    c_lastc = 0;
  }

  if (knt > 0) {
    MPC_deploy_xgemv(knt, c_lastc, MPC_deploy_B.c_A, 4, MPC_deploy_B.c_A, 1,
                     MPC_deploy_B.work);
    MPC_deploy_xgerc(knt, c_lastc, -MPC_deploy_B.tau_idx_0, 1, MPC_deploy_B.work,
                     MPC_deploy_B.c_A, 4);
  }

  for (knt = 1; knt < 3; knt++) {
    MPC_deploy_B.c_A[knt] *= -MPC_deploy_B.tau_idx_0;
  }

  MPC_deploy_B.c_A[0] = 1.0 - MPC_deploy_B.tau_idx_0;
  for (knt = 0; knt < 3; knt++) {
    Q[3 * knt] = MPC_deploy_B.c_A[3 * knt];
    c_lastc = 3 * knt + 1;
    Q[c_lastc] = MPC_deploy_B.c_A[c_lastc];
    c_lastc = 3 * knt + 2;
    Q[c_lastc] = MPC_deploy_B.c_A[c_lastc];
  }
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static real_T MPC_deploy_KWIKfactor(const real_T b_Ac[78], const int16_T iC[26],
  int16_T nA, const real_T b_Linv[9], real_T RLinv[9], real_T D[9], real_T b_H[9],
  int16_T n)
{
  real_T Status;
  int32_T exitg1;
  int16_T b_j;
  int16_T c_k;
  Status = 1.0;
  memset(&RLinv[0], 0, 9U * sizeof(real_T));
  MPC_deploy_B.i_cx = 1;
  while (MPC_deploy_B.i_cx - 1 <= nA - 1) {
    MPC_deploy_B.f_i_p = iC[(int16_T)MPC_deploy_B.i_cx - 1];
    for (MPC_deploy_B.b_i_b = 0; MPC_deploy_B.b_i_b < 3; MPC_deploy_B.b_i_b++) {
      MPC_deploy_B.j = MPC_deploy_B.b_i_b + 3 * ((int16_T)MPC_deploy_B.i_cx - 1);
      RLinv[MPC_deploy_B.j] = 0.0;
      RLinv[MPC_deploy_B.j] += b_Ac[MPC_deploy_B.f_i_p - 1] *
        b_Linv[MPC_deploy_B.b_i_b];
      RLinv[MPC_deploy_B.j] += b_Linv[MPC_deploy_B.b_i_b + 3] *
        b_Ac[MPC_deploy_B.f_i_p + 25];
      RLinv[MPC_deploy_B.j] += b_Linv[MPC_deploy_B.b_i_b + 6] *
        b_Ac[MPC_deploy_B.f_i_p + 51];
    }

    MPC_deploy_B.i_cx++;
  }

  MPC_deploy_qr(RLinv, MPC_deploy_B.QQ, MPC_deploy_B.RR);
  MPC_deploy_B.b_i_b = 1;
  do {
    exitg1 = 0;
    if (MPC_deploy_B.b_i_b - 1 <= nA - 1) {
      if (fabs(MPC_deploy_B.RR[(((int16_T)MPC_deploy_B.b_i_b - 1) * 3 + (int16_T)
            MPC_deploy_B.b_i_b) - 1]) < 1.0E-12) {
        Status = -2.0;
        exitg1 = 1;
      } else {
        MPC_deploy_B.b_i_b++;
      }
    } else {
      MPC_deploy_B.b_i_b = 1;
      while (MPC_deploy_B.b_i_b - 1 <= n - 1) {
        MPC_deploy_B.j = 1;
        while (MPC_deploy_B.j - 1 <= n - 1) {
          MPC_deploy_B.i_cx = ((int16_T)MPC_deploy_B.b_i_b - 1) * 3;
          MPC_deploy_B.f_i_p = ((int16_T)MPC_deploy_B.j - 1) * 3;
          MPC_deploy_B.TL[((int16_T)MPC_deploy_B.b_i_b + MPC_deploy_B.f_i_p) - 1]
            = (b_Linv[MPC_deploy_B.i_cx + 1] *
               MPC_deploy_B.QQ[MPC_deploy_B.f_i_p + 1] +
               b_Linv[MPC_deploy_B.i_cx] * MPC_deploy_B.QQ[MPC_deploy_B.f_i_p])
            + b_Linv[MPC_deploy_B.i_cx + 2] * MPC_deploy_B.QQ[MPC_deploy_B.f_i_p
            + 2];
          MPC_deploy_B.j++;
        }

        MPC_deploy_B.b_i_b++;
      }

      memset(&RLinv[0], 0, 9U * sizeof(real_T));
      for (b_j = nA; b_j > 0; b_j--) {
        MPC_deploy_B.b_i_b = 3 * (b_j - 1);
        MPC_deploy_B.j = (b_j + MPC_deploy_B.b_i_b) - 1;
        RLinv[MPC_deploy_B.j] = 1.0;
        for (c_k = b_j; c_k <= nA; c_k++) {
          MPC_deploy_B.f_i_p = ((c_k - 1) * 3 + b_j) - 1;
          RLinv[MPC_deploy_B.f_i_p] /= MPC_deploy_B.RR[MPC_deploy_B.j];
        }

        if (b_j > 1) {
          MPC_deploy_B.i_cx = 1;
          while (MPC_deploy_B.i_cx - 1 <= b_j - 2) {
            for (c_k = b_j; c_k <= nA; c_k++) {
              MPC_deploy_B.j = (c_k - 1) * 3;
              MPC_deploy_B.f_i_p = (MPC_deploy_B.j + (int16_T)MPC_deploy_B.i_cx)
                - 1;
              RLinv[MPC_deploy_B.f_i_p] -= MPC_deploy_B.RR[(MPC_deploy_B.b_i_b +
                (int16_T)MPC_deploy_B.i_cx) - 1] * RLinv[(MPC_deploy_B.j + b_j)
                - 1];
            }

            MPC_deploy_B.i_cx++;
          }
        }
      }

      MPC_deploy_B.i_cx = 1;
      while (MPC_deploy_B.i_cx - 1 <= n - 1) {
        for (b_j = (int16_T)MPC_deploy_B.i_cx; b_j <= n; b_j++) {
          MPC_deploy_B.b_i_b = ((int16_T)MPC_deploy_B.i_cx + 3 * (b_j - 1)) - 1;
          b_H[MPC_deploy_B.b_i_b] = 0.0;
          MPC_deploy_B.j = nA + 1;
          if (nA + 1 > 32767) {
            MPC_deploy_B.j = 32767;
          }

          for (c_k = (int16_T)MPC_deploy_B.j; c_k <= n; c_k++) {
            MPC_deploy_B.j = (c_k - 1) * 3;
            b_H[MPC_deploy_B.b_i_b] -= MPC_deploy_B.TL[(MPC_deploy_B.j +
              (int16_T)MPC_deploy_B.i_cx) - 1] * MPC_deploy_B.TL[(MPC_deploy_B.j
              + b_j) - 1];
          }

          b_H[(b_j + 3 * ((int16_T)MPC_deploy_B.i_cx - 1)) - 1] =
            b_H[MPC_deploy_B.b_i_b];
        }

        MPC_deploy_B.i_cx++;
      }

      MPC_deploy_B.i_cx = 1;
      while (MPC_deploy_B.i_cx - 1 <= nA - 1) {
        MPC_deploy_B.f_i_p = 1;
        while (MPC_deploy_B.f_i_p - 1 <= n - 1) {
          MPC_deploy_B.b_i_b = ((int16_T)MPC_deploy_B.f_i_p + 3 * ((int16_T)
            MPC_deploy_B.i_cx - 1)) - 1;
          D[MPC_deploy_B.b_i_b] = 0.0;
          for (b_j = (int16_T)MPC_deploy_B.i_cx; b_j <= nA; b_j++) {
            MPC_deploy_B.j = (b_j - 1) * 3;
            D[MPC_deploy_B.b_i_b] += MPC_deploy_B.TL[(MPC_deploy_B.j + (int16_T)
              MPC_deploy_B.f_i_p) - 1] * RLinv[(MPC_deploy_B.j + (int16_T)
              MPC_deploy_B.i_cx) - 1];
          }

          MPC_deploy_B.f_i_p++;
        }

        MPC_deploy_B.i_cx++;
      }

      exitg1 = 1;
    }
  } while (exitg1 == 0);

  return Status;
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static real_T MPC_deploy_mtimes(const real_T b_A[3], const real_T B[3])
{
  return (b_A[0] * B[0] + b_A[1] * B[1]) + b_A[2] * B[2];
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_DropConstraint(int16_T kDrop, int16_T iA[26], int16_T *nA,
  int16_T iC[26])
{
  int32_T tmp;
  int16_T i;
  iA[iC[kDrop - 1] - 1] = 0;
  if (kDrop < *nA) {
    tmp = *nA - 1;
    if (*nA - 1 < -32768) {
      tmp = -32768;
    }

    for (i = kDrop; i <= (int16_T)tmp; i++) {
      iC[i - 1] = iC[i];
    }
  }

  iC[*nA - 1] = 0;
  tmp = *nA - 1;
  if (*nA - 1 < -32768) {
    tmp = -32768;
  }

  *nA = (int16_T)tmp;
}

/* Function for MATLAB Function: '<S25>/optimizer' */
static void MPC_deploy_qpkwik(const real_T b_Linv[9], const real_T b_Hinv[9],
  const real_T f[3], const real_T b_Ac[78], const real_T b[26], int16_T iA[26],
  int16_T maxiter, real_T FeasTol, real_T x[3], real_T lambda[26], real_T
  *status)
{
  int32_T exitg1;
  int32_T exitg3;
  int16_T kDrop;
  int16_T kNext;
  int16_T nA;
  int16_T tmp;
  int16_T tmp_0;
  uint16_T b_x;
  uint16_T q;
  boolean_T ColdReset;
  boolean_T DualFeasible;
  boolean_T cTolComputed;
  boolean_T exitg2;
  boolean_T exitg4;
  boolean_T guard1 = false;
  boolean_T guard2 = false;
  *status = 1.0;
  x[0] = 0.0;
  MPC_deploy_B.r[0] = 0.0;
  x[1] = 0.0;
  MPC_deploy_B.r[1] = 0.0;
  x[2] = 0.0;
  MPC_deploy_B.r[2] = 0.0;
  MPC_deploy_B.rMin = 0.0;
  cTolComputed = false;
  for (MPC_deploy_B.i_c = 0; MPC_deploy_B.i_c < 26; MPC_deploy_B.i_c++) {
    lambda[MPC_deploy_B.i_c] = 0.0;
    MPC_deploy_B.cTol[MPC_deploy_B.i_c] = 1.0;
    MPC_deploy_B.iC[MPC_deploy_B.i_c] = 0;
  }

  nA = 0;
  for (MPC_deploy_B.i_c = 0; MPC_deploy_B.i_c < 26; MPC_deploy_B.i_c++) {
    if (iA[MPC_deploy_B.i_c] == 1) {
      MPC_deploy_B.f_i = nA + 1;
      if (nA + 1 > 32767) {
        MPC_deploy_B.f_i = 32767;
      }

      nA = (int16_T)MPC_deploy_B.f_i;
      MPC_deploy_B.iC[(int16_T)MPC_deploy_B.f_i - 1] = (int16_T)
        (MPC_deploy_B.i_c + 1);
    }
  }

  guard1 = false;
  if (nA > 0) {
    for (MPC_deploy_B.i_c = 0; MPC_deploy_B.i_c < 6; MPC_deploy_B.i_c++) {
      MPC_deploy_B.Opt[MPC_deploy_B.i_c] = 0.0;
    }

    MPC_deploy_B.Rhs[0] = f[0];
    MPC_deploy_B.Rhs[3] = 0.0;
    MPC_deploy_B.Rhs[1] = f[1];
    MPC_deploy_B.Rhs[4] = 0.0;
    MPC_deploy_B.Rhs[2] = f[2];
    MPC_deploy_B.Rhs[5] = 0.0;
    DualFeasible = false;
    MPC_deploy_B.f_i = 3 * nA;
    if (MPC_deploy_B.f_i > 32767) {
      MPC_deploy_B.f_i = 32767;
    }

    if ((int16_T)MPC_deploy_B.f_i > 50) {
      kNext = (int16_T)MPC_deploy_B.f_i;
    } else {
      kNext = 50;
    }

    q = (uint16_T)(kNext / 10U);
    b_x = (uint16_T)((uint32_T)kNext - q * 10);
    if ((b_x > 0) && (b_x >= 5)) {
      q++;
    }

    ColdReset = false;
    do {
      exitg3 = 0;
      if ((!DualFeasible) && (nA > 0) && ((int32_T)*status <= maxiter)) {
        MPC_deploy_B.Xnorm0 = MPC_deploy_KWIKfactor(b_Ac, MPC_deploy_B.iC, nA,
          b_Linv, MPC_deploy_B.RLinv, MPC_deploy_B.D, MPC_deploy_B.b_H, 3);
        if (MPC_deploy_B.Xnorm0 < 0.0) {
          if (ColdReset) {
            *status = -2.0;
            exitg3 = 2;
          } else {
            nA = 0;
            for (MPC_deploy_B.i_c = 0; MPC_deploy_B.i_c < 26; MPC_deploy_B.i_c++)
            {
              iA[MPC_deploy_B.i_c] = 0;
              MPC_deploy_B.iC[MPC_deploy_B.i_c] = 0;
            }

            ColdReset = true;
          }
        } else {
          MPC_deploy_B.i_c = 1;
          while (MPC_deploy_B.i_c - 1 <= nA - 1) {
            MPC_deploy_B.f_i = (int16_T)MPC_deploy_B.i_c + 3;
            if ((int16_T)MPC_deploy_B.i_c + 3 > 32767) {
              MPC_deploy_B.f_i = 32767;
            }

            MPC_deploy_B.Rhs[MPC_deploy_B.f_i - 1] = b[MPC_deploy_B.iC[(int16_T)
              MPC_deploy_B.i_c - 1] - 1];
            for (kNext = (int16_T)MPC_deploy_B.i_c; kNext <= nA; kNext++) {
              MPC_deploy_B.f_i = (kNext + 3 * ((int16_T)MPC_deploy_B.i_c - 1)) -
                1;
              MPC_deploy_B.U[MPC_deploy_B.f_i] = 0.0;
              MPC_deploy_B.b_k = 1;
              while (MPC_deploy_B.b_k - 1 <= nA - 1) {
                MPC_deploy_B.U_tmp = ((int16_T)MPC_deploy_B.b_k - 1) * 3;
                MPC_deploy_B.U[MPC_deploy_B.f_i] += MPC_deploy_B.RLinv
                  [(MPC_deploy_B.U_tmp + kNext) - 1] * MPC_deploy_B.RLinv
                  [(MPC_deploy_B.U_tmp + (int16_T)MPC_deploy_B.i_c) - 1];
                MPC_deploy_B.b_k++;
              }

              MPC_deploy_B.U[((int16_T)MPC_deploy_B.i_c + 3 * (kNext - 1)) - 1] =
                MPC_deploy_B.U[MPC_deploy_B.f_i];
            }

            MPC_deploy_B.i_c++;
          }

          for (MPC_deploy_B.i_c = 0; MPC_deploy_B.i_c < 3; MPC_deploy_B.i_c++) {
            MPC_deploy_B.Opt[MPC_deploy_B.i_c] =
              (MPC_deploy_B.b_H[MPC_deploy_B.i_c] * MPC_deploy_B.Rhs[0] +
               MPC_deploy_B.b_H[MPC_deploy_B.i_c + 3] * MPC_deploy_B.Rhs[1]) +
              MPC_deploy_B.b_H[MPC_deploy_B.i_c + 6] * MPC_deploy_B.Rhs[2];
            MPC_deploy_B.b_k = 1;
            while (MPC_deploy_B.b_k - 1 <= nA - 1) {
              MPC_deploy_B.f_i = (int16_T)MPC_deploy_B.b_k + 3;
              if ((int16_T)MPC_deploy_B.b_k + 3 > 32767) {
                MPC_deploy_B.f_i = 32767;
              }

              MPC_deploy_B.Opt[MPC_deploy_B.i_c] += MPC_deploy_B.D[((int16_T)
                MPC_deploy_B.b_k - 1) * 3 + MPC_deploy_B.i_c] *
                MPC_deploy_B.Rhs[MPC_deploy_B.f_i - 1];
              MPC_deploy_B.b_k++;
            }
          }

          MPC_deploy_B.i_c = 1;
          while (MPC_deploy_B.i_c - 1 <= nA - 1) {
            MPC_deploy_B.f_i = (int16_T)MPC_deploy_B.i_c + 3;
            if ((int16_T)MPC_deploy_B.i_c + 3 > 32767) {
              MPC_deploy_B.f_i = 32767;
            }

            MPC_deploy_B.b_k = ((int16_T)MPC_deploy_B.i_c - 1) * 3;
            MPC_deploy_B.Opt[MPC_deploy_B.f_i - 1] =
              (MPC_deploy_B.D[MPC_deploy_B.b_k + 1] * MPC_deploy_B.Rhs[1] +
               MPC_deploy_B.D[MPC_deploy_B.b_k] * MPC_deploy_B.Rhs[0]) +
              MPC_deploy_B.D[MPC_deploy_B.b_k + 2] * MPC_deploy_B.Rhs[2];
            MPC_deploy_B.b_k = 1;
            while (MPC_deploy_B.b_k - 1 <= nA - 1) {
              MPC_deploy_B.f_i = (int16_T)MPC_deploy_B.i_c + 3;
              if ((int16_T)MPC_deploy_B.i_c + 3 > 32767) {
                MPC_deploy_B.f_i = 32767;
              }

              MPC_deploy_B.U_tmp = (int16_T)MPC_deploy_B.i_c + 3;
              if ((int16_T)MPC_deploy_B.i_c + 3 > 32767) {
                MPC_deploy_B.U_tmp = 32767;
              }

              MPC_deploy_B.i_k = (int16_T)MPC_deploy_B.b_k + 3;
              if ((int16_T)MPC_deploy_B.b_k + 3 > 32767) {
                MPC_deploy_B.i_k = 32767;
              }

              MPC_deploy_B.Opt[MPC_deploy_B.f_i - 1] = MPC_deploy_B.U[(((int16_T)
                MPC_deploy_B.b_k - 1) * 3 + (int16_T)MPC_deploy_B.i_c) - 1] *
                MPC_deploy_B.Rhs[MPC_deploy_B.i_k - 1] +
                MPC_deploy_B.Opt[MPC_deploy_B.U_tmp - 1];
              MPC_deploy_B.b_k++;
            }

            MPC_deploy_B.i_c++;
          }

          MPC_deploy_B.Xnorm0 = -1.0E-12;
          kDrop = 0;
          MPC_deploy_B.i_c = 1;
          while (MPC_deploy_B.i_c - 1 <= nA - 1) {
            MPC_deploy_B.f_i = (int16_T)MPC_deploy_B.i_c + 3;
            if ((int16_T)MPC_deploy_B.i_c + 3 > 32767) {
              MPC_deploy_B.f_i = 32767;
            }

            lambda[MPC_deploy_B.iC[(int16_T)MPC_deploy_B.i_c - 1] - 1] =
              MPC_deploy_B.Opt[MPC_deploy_B.f_i - 1];
            MPC_deploy_B.f_i = (int16_T)MPC_deploy_B.i_c + 3;
            if ((int16_T)MPC_deploy_B.i_c + 3 > 32767) {
              MPC_deploy_B.f_i = 32767;
            }

            if ((MPC_deploy_B.Opt[MPC_deploy_B.f_i - 1] < MPC_deploy_B.Xnorm0) &&
                ((int16_T)MPC_deploy_B.i_c <= nA)) {
              kDrop = (int16_T)MPC_deploy_B.i_c;
              MPC_deploy_B.f_i = (int16_T)MPC_deploy_B.i_c + 3;
              if ((int16_T)MPC_deploy_B.i_c + 3 > 32767) {
                MPC_deploy_B.f_i = 32767;
              }

              MPC_deploy_B.Xnorm0 = MPC_deploy_B.Opt[MPC_deploy_B.f_i - 1];
            }

            MPC_deploy_B.i_c++;
          }

          if (kDrop <= 0) {
            DualFeasible = true;
            x[0] = MPC_deploy_B.Opt[0];
            x[1] = MPC_deploy_B.Opt[1];
            x[2] = MPC_deploy_B.Opt[2];
          } else {
            (*status)++;
            if ((int32_T)*status > q) {
              nA = 0;
              for (MPC_deploy_B.i_c = 0; MPC_deploy_B.i_c < 26; MPC_deploy_B.i_c
                   ++) {
                iA[MPC_deploy_B.i_c] = 0;
                MPC_deploy_B.iC[MPC_deploy_B.i_c] = 0;
              }

              ColdReset = true;
            } else {
              lambda[MPC_deploy_B.iC[kDrop - 1] - 1] = 0.0;
              MPC_deploy_DropConstraint(kDrop, iA, &nA, MPC_deploy_B.iC);
            }
          }
        }
      } else {
        if (nA <= 0) {
          memset(&lambda[0], 0, 26U * sizeof(real_T));
          MPC_deploy_Unconstrained(b_Hinv, f, x, 3);
        }

        exitg3 = 1;
      }
    } while (exitg3 == 0);

    if (exitg3 == 1) {
      guard1 = true;
    }
  } else {
    MPC_deploy_Unconstrained(b_Hinv, f, x, 3);
    guard1 = true;
  }

  if (guard1) {
    MPC_deploy_B.Xnorm0 = MPC_deploy_norm(x);
    exitg2 = false;
    while ((!exitg2) && ((int32_T)*status <= maxiter)) {
      MPC_deploy_B.cMin = -FeasTol;
      kNext = 0;
      for (MPC_deploy_B.f_i = 0; MPC_deploy_B.f_i < 26; MPC_deploy_B.f_i++) {
        MPC_deploy_B.t2 = MPC_deploy_B.cTol[MPC_deploy_B.f_i];
        if (!cTolComputed) {
          MPC_deploy_B.b_Ac[0] = b_Ac[MPC_deploy_B.f_i] * x[0];
          MPC_deploy_B.b_Ac[1] = b_Ac[MPC_deploy_B.f_i + 26] * x[1];
          MPC_deploy_B.b_Ac[2] = b_Ac[MPC_deploy_B.f_i + 52] * x[2];
          MPC_deploy_abs(MPC_deploy_B.b_Ac, MPC_deploy_B.z);
          MPC_deploy_B.cVal = MPC_deploy_maximum(MPC_deploy_B.z);
          if ((!(MPC_deploy_B.t2 > MPC_deploy_B.cVal)) && (!rtIsNaN
               (MPC_deploy_B.cVal))) {
            MPC_deploy_B.t2 = MPC_deploy_B.cVal;
          }
        }

        if (iA[MPC_deploy_B.f_i] == 0) {
          MPC_deploy_B.cVal = (((b_Ac[MPC_deploy_B.f_i] * x[0] +
            b_Ac[MPC_deploy_B.f_i + 26] * x[1]) + b_Ac[MPC_deploy_B.f_i + 52] *
                                x[2]) - b[MPC_deploy_B.f_i]) / MPC_deploy_B.t2;
          if (MPC_deploy_B.cVal < MPC_deploy_B.cMin) {
            MPC_deploy_B.cMin = MPC_deploy_B.cVal;
            kNext = (int16_T)(MPC_deploy_B.f_i + 1);
          }
        }

        MPC_deploy_B.cTol[MPC_deploy_B.f_i] = MPC_deploy_B.t2;
      }

      cTolComputed = true;
      if (kNext <= 0) {
        exitg2 = true;
      } else if ((int32_T)*status == maxiter) {
        *status = 0.0;
        exitg2 = true;
      } else {
        do {
          exitg1 = 0;
          if ((kNext > 0) && ((int32_T)*status <= maxiter)) {
            guard2 = false;
            if (nA == 0) {
              for (MPC_deploy_B.f_i = 0; MPC_deploy_B.f_i < 3; MPC_deploy_B.f_i
                   ++) {
                MPC_deploy_B.z[MPC_deploy_B.f_i] = b_Hinv[MPC_deploy_B.f_i + 6] *
                  b_Ac[kNext + 51] + (b_Hinv[MPC_deploy_B.f_i + 3] * b_Ac[kNext
                                      + 25] + b_Ac[kNext - 1] *
                                      b_Hinv[MPC_deploy_B.f_i]);
              }

              guard2 = true;
            } else {
              MPC_deploy_B.cMin = MPC_deploy_KWIKfactor(b_Ac, MPC_deploy_B.iC,
                nA, b_Linv, MPC_deploy_B.RLinv, MPC_deploy_B.D, MPC_deploy_B.b_H,
                3);
              if (MPC_deploy_B.cMin <= 0.0) {
                *status = -2.0;
                exitg1 = 1;
              } else {
                for (MPC_deploy_B.f_i = 0; MPC_deploy_B.f_i < 9;
                     MPC_deploy_B.f_i++) {
                  MPC_deploy_B.U[MPC_deploy_B.f_i] =
                    -MPC_deploy_B.b_H[MPC_deploy_B.f_i];
                }

                for (MPC_deploy_B.f_i = 0; MPC_deploy_B.f_i < 3;
                     MPC_deploy_B.f_i++) {
                  MPC_deploy_B.z[MPC_deploy_B.f_i] =
                    MPC_deploy_B.U[MPC_deploy_B.f_i + 6] * b_Ac[kNext + 51] +
                    (MPC_deploy_B.U[MPC_deploy_B.f_i + 3] * b_Ac[kNext + 25] +
                     b_Ac[kNext - 1] * MPC_deploy_B.U[MPC_deploy_B.f_i]);
                }

                MPC_deploy_B.f_i = 1;
                while (MPC_deploy_B.f_i - 1 <= nA - 1) {
                  MPC_deploy_B.i_c = ((int16_T)MPC_deploy_B.f_i - 1) * 3;
                  MPC_deploy_B.r[(int16_T)MPC_deploy_B.f_i - 1] =
                    (MPC_deploy_B.D[MPC_deploy_B.i_c + 1] * b_Ac[kNext + 25] +
                     MPC_deploy_B.D[MPC_deploy_B.i_c] * b_Ac[kNext - 1]) +
                    MPC_deploy_B.D[MPC_deploy_B.i_c + 2] * b_Ac[kNext + 51];
                  MPC_deploy_B.f_i++;
                }

                guard2 = true;
              }
            }

            if (guard2) {
              kDrop = 0;
              MPC_deploy_B.cMin = 0.0;
              DualFeasible = true;
              ColdReset = true;
              if (nA > 0) {
                MPC_deploy_B.f_i = 0;
                exitg4 = false;
                while ((!exitg4) && (MPC_deploy_B.f_i <= nA - 1)) {
                  if (MPC_deploy_B.r[MPC_deploy_B.f_i] >= 1.0E-12) {
                    ColdReset = false;
                    exitg4 = true;
                  } else {
                    MPC_deploy_B.f_i++;
                  }
                }
              }

              if ((nA != 0) && (!ColdReset)) {
                MPC_deploy_B.f_i = 1;
                while (MPC_deploy_B.f_i - 1 <= nA - 1) {
                  MPC_deploy_B.t2 = MPC_deploy_B.r[(int16_T)MPC_deploy_B.f_i - 1];
                  if (MPC_deploy_B.t2 > 1.0E-12) {
                    MPC_deploy_B.t2 = lambda[MPC_deploy_B.iC[(int16_T)
                      MPC_deploy_B.f_i - 1] - 1] / MPC_deploy_B.t2;
                    if ((kDrop == 0) || (MPC_deploy_B.t2 < MPC_deploy_B.rMin)) {
                      MPC_deploy_B.rMin = MPC_deploy_B.t2;
                      kDrop = (int16_T)MPC_deploy_B.f_i;
                    }
                  }

                  MPC_deploy_B.f_i++;
                }

                if (kDrop > 0) {
                  MPC_deploy_B.cMin = MPC_deploy_B.rMin;
                  DualFeasible = false;
                }
              }

              MPC_deploy_B.t2 = b_Ac[kNext - 1];
              MPC_deploy_B.b_Ac[0] = MPC_deploy_B.t2;
              MPC_deploy_B.cVal = b_Ac[kNext + 25];
              MPC_deploy_B.b_Ac[1] = MPC_deploy_B.cVal;
              MPC_deploy_B.b_Ac_tmp = b_Ac[kNext + 51];
              MPC_deploy_B.b_Ac[2] = MPC_deploy_B.b_Ac_tmp;
              MPC_deploy_B.zTa = MPC_deploy_mtimes(MPC_deploy_B.z,
                MPC_deploy_B.b_Ac);
              if (MPC_deploy_B.zTa <= 0.0) {
                MPC_deploy_B.t2 = 0.0;
                ColdReset = true;
              } else {
                MPC_deploy_B.t2 = (b[kNext - 1] - ((MPC_deploy_B.t2 * x[0] +
                  MPC_deploy_B.cVal * x[1]) + MPC_deploy_B.b_Ac_tmp * x[2])) /
                  MPC_deploy_B.zTa;
                ColdReset = false;
              }

              if (DualFeasible && ColdReset) {
                *status = -1.0;
                exitg1 = 1;
              } else {
                if (ColdReset) {
                  MPC_deploy_B.cVal = MPC_deploy_B.cMin;
                } else if (DualFeasible) {
                  MPC_deploy_B.cVal = MPC_deploy_B.t2;
                } else if ((MPC_deploy_B.cMin < MPC_deploy_B.t2) || rtIsNaN
                           (MPC_deploy_B.t2)) {
                  MPC_deploy_B.cVal = MPC_deploy_B.cMin;
                } else {
                  MPC_deploy_B.cVal = MPC_deploy_B.t2;
                }

                MPC_deploy_B.f_i = 1;
                while (MPC_deploy_B.f_i - 1 <= nA - 1) {
                  MPC_deploy_B.i_c = MPC_deploy_B.iC[(int16_T)MPC_deploy_B.f_i -
                    1];
                  lambda[MPC_deploy_B.i_c - 1] -= MPC_deploy_B.r[(int16_T)
                    MPC_deploy_B.f_i - 1] * MPC_deploy_B.cVal;
                  if ((MPC_deploy_B.i_c <= 26) && (lambda[MPC_deploy_B.i_c - 1] <
                       0.0)) {
                    lambda[MPC_deploy_B.i_c - 1] = 0.0;
                  }

                  MPC_deploy_B.f_i++;
                }

                lambda[kNext - 1] += MPC_deploy_B.cVal;
                if (MPC_deploy_B.cVal == MPC_deploy_B.cMin) {
                  MPC_deploy_DropConstraint(kDrop, iA, &nA, MPC_deploy_B.iC);
                }

                if (!ColdReset) {
                  x[0] += MPC_deploy_B.cVal * MPC_deploy_B.z[0];
                  x[1] += MPC_deploy_B.cVal * MPC_deploy_B.z[1];
                  x[2] += MPC_deploy_B.cVal * MPC_deploy_B.z[2];
                  if (MPC_deploy_B.cVal == MPC_deploy_B.t2) {
                    if (nA == 3) {
                      *status = -1.0;
                      exitg1 = 1;
                    } else {
                      MPC_deploy_B.f_i = nA + 1;
                      if (nA + 1 > 32767) {
                        MPC_deploy_B.f_i = 32767;
                      }

                      nA = (int16_T)MPC_deploy_B.f_i;
                      MPC_deploy_B.iC[(int16_T)MPC_deploy_B.f_i - 1] = kNext;
                      kDrop = (int16_T)MPC_deploy_B.f_i;
                      exitg4 = false;
                      while ((!exitg4) && (kDrop > 1)) {
                        tmp = MPC_deploy_B.iC[kDrop - 1];
                        tmp_0 = MPC_deploy_B.iC[kDrop - 2];
                        if (tmp > tmp_0) {
                          exitg4 = true;
                        } else {
                          MPC_deploy_B.iC[kDrop - 1] = tmp_0;
                          MPC_deploy_B.iC[kDrop - 2] = tmp;
                          kDrop--;
                        }
                      }

                      iA[kNext - 1] = 1;
                      kNext = 0;
                      (*status)++;
                    }
                  } else {
                    (*status)++;
                  }
                } else {
                  (*status)++;
                }
              }
            }
          } else {
            MPC_deploy_B.cMin = MPC_deploy_norm(x);
            if (fabs(MPC_deploy_B.cMin - MPC_deploy_B.Xnorm0) > 0.001) {
              MPC_deploy_B.Xnorm0 = MPC_deploy_B.cMin;
              MPC_deploy_abs_l(b, MPC_deploy_B.dv);
              MPC_deploy_maximum2(MPC_deploy_B.dv, 1.0, MPC_deploy_B.cTol);
              cTolComputed = false;
            }

            exitg1 = 2;
          }
        } while (exitg1 == 0);

        if (exitg1 == 1) {
          exitg2 = true;
        }
      }
    }
  }
}

/* Model step function for TID0 */
void MPC_deploy_step0(void)            /* Sample time: [1.0s, 0.0s] */
{
  real_T b_varargout_2[2];
  real_T b_varargout_2_0[2];
  real_T b_varargout_2_1[2];
  uint8_T b_varargout_1;

  {                                    /* Sample time: [1.0s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* MATLABSystem: '<S4>/MQTT Subscribe6' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_m.subscribeID, 2, &b_varargout_1,
    &MPC_deploy_B.b_varargout_2[0], &MPC_deploy_B.Topic[0]);

  /* MATLABSystem: '<S4>/MQTT Subscribe1' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_l.subscribeID, 2, &b_varargout_1,
    &MPC_deploy_B.b_varargout_2_m[0], &MPC_deploy_B.Topic[0]);

  /* MATLABSystem: '<S4>/MQTT Subscribe2' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_n.subscribeID, 2, &b_varargout_1,
    &b_varargout_2[0], &MPC_deploy_B.Topic[0]);

  /* MATLABSystem: '<S4>/MQTT Subscribe3' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_e.subscribeID, 2, &b_varargout_1,
    &b_varargout_2_0[0], &MPC_deploy_B.Topic[0]);

  /* MATLABSystem: '<S4>/MQTT Subscribe4' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_h.subscribeID, 2, &b_varargout_1,
    &b_varargout_2_1[0], &MPC_deploy_B.Topic[0]);

  /* RateTransition generated from: '<S25>/optimizer' incorporates:
   *  MATLABSystem: '<S4>/MQTT Subscribe1'
   *  MATLABSystem: '<S4>/MQTT Subscribe2'
   *  MATLABSystem: '<S4>/MQTT Subscribe3'
   *  MATLABSystem: '<S4>/MQTT Subscribe4'
   *  MATLABSystem: '<S4>/MQTT Subscribe6'
   */
  if (MPC_deploy_M->Timing.RateInteraction.TID0_1) {
    MPC_deploy_DW.TmpRTBAtoptimizerInport3_Buffer[0] =
      MPC_deploy_B.b_varargout_2[1];
    MPC_deploy_DW.TmpRTBAtoptimizerInport3_Buffer[1] =
      MPC_deploy_B.b_varargout_2_m[1];
    MPC_deploy_DW.TmpRTBAtoptimizerInport3_Buffer[2] = b_varargout_2[1];
    MPC_deploy_DW.TmpRTBAtoptimizerInport3_Buffer[3] = b_varargout_2_0[1];
    MPC_deploy_DW.TmpRTBAtoptimizerInport3_Buffer[4] = b_varargout_2_1[1];
  }

  /* End of RateTransition generated from: '<S25>/optimizer' */

  /* MATLABSystem: '<S4>/MQTT Subscribe5' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_o.subscribeID, 2, &b_varargout_1,
    &MPC_deploy_B.b_varargout_2[0], &MPC_deploy_B.Topic[0]);

  /* MATLABSystem: '<S4>/MQTT Subscribe7' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_k.subscribeID, 2, &b_varargout_1,
    &MPC_deploy_B.b_varargout_2_m[0], &MPC_deploy_B.Topic[0]);

  /* MATLABSystem: '<S4>/MQTT Subscribe8' */
  MW_MQTT_subscribe_step(MPC_deploy_DW.obj_g.subscribeID, 2, &b_varargout_1,
    &b_varargout_2[0], &MPC_deploy_B.Topic[0]);

  /* RateTransition generated from: '<S25>/optimizer' incorporates:
   *  Gain: '<S4>/[Hz] to [L//min]'
   *  Gain: '<S4>/[L//min] to [Kg//s]'
   *  MATLABSystem: '<S4>/MQTT Subscribe5'
   *  MATLABSystem: '<S4>/MQTT Subscribe7'
   *  MATLABSystem: '<S4>/MQTT Subscribe8'
   */
  if (MPC_deploy_M->Timing.RateInteraction.TID0_1) {
    MPC_deploy_DW.TmpRTBAtoptimizerInport5_Buffer[0] =
      MPC_deploy_P.HztoLmin_Gain * MPC_deploy_B.b_varargout_2[1] *
      MPC_deploy_P.LmintoKgs_Gain;
    MPC_deploy_DW.TmpRTBAtoptimizerInport5_Buffer[1] =
      MPC_deploy_B.b_varargout_2_m[1];
    MPC_deploy_DW.TmpRTBAtoptimizerInport5_Buffer[2] = b_varargout_2[1];
  }

  /* End of RateTransition generated from: '<S25>/optimizer' */
}

/* Model step function for TID1 */
void MPC_deploy_step1(void)            /* Sample time: [60.0s, 0.0s] */
{
  static const real_T b_Mx[260] = { -0.0034472898893543446,
    -0.0032296664747384265, -0.0032057335875264946, -0.0033713209507968225,
    -0.0036765100693914861, -0.0040940714182821124, -0.0046118872226557526,
    -0.0052274478299704843, -0.0059446325779107219, -0.0067718858639344874,
    0.0034472898893543446, 0.0032296664747384265, 0.0032057335875264946,
    0.0033713209507968225, 0.0036765100693914861, 0.0040940714182821124,
    0.0046118872226557526, 0.0052274478299704843, 0.0059446325779107219,
    0.0067718858639344874, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.0062143425458790515,
    -0.005916053399853286, -0.005947109372865131, -0.0063058243796838736,
    -0.0069099740935577927, -0.0077155456205662571, -0.0087040819490134588,
    -0.0098734898458182757, -0.011232681872686695, -0.012798561873916538,
    0.0062143425458790515, 0.005916053399853286, 0.005947109372865131,
    0.0063058243796838736, 0.0069099740935577927, 0.0077155456205662571,
    0.0087040819490134588, 0.0098734898458182757, 0.011232681872686695,
    0.012798561873916538, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.011309688201624091,
    -0.019326183891449134, -0.025873554279067124, -0.031802949446992787,
    -0.037651199299193333, -0.043778476480048012, -0.050445575419424189,
    -0.057860636746283042, -0.066207899856319169, -0.075665883647125551,
    0.011309688201624091, 0.019326183891449134, 0.025873554279067124,
    0.031802949446992787, 0.037651199299193333, 0.043778476480048012,
    0.050445575419424189, 0.057860636746283042, 0.066207899856319169,
    0.075665883647125551, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.0038564546941650315,
    -0.0031102681239147806, -0.0030383855255228629, -0.0031680962979091011,
    -0.0034374073405308205, -0.0038169173748640851, -0.0042930276452206031,
    -0.0048620152619842875, -0.0055266566838256554, -0.0062943053841409535,
    0.0038564546941650315, 0.0031102681239147806, 0.0030383855255228629,
    0.0031680962979091011, 0.0034374073405308205, 0.0038169173748640851,
    0.0042930276452206031, 0.0048620152619842875, 0.0055266566838256554,
    0.0062943053841409535, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.0034138654349388261,
    -0.0031025961750660979, -0.0030382641925905686, -0.0031681041524511335,
    -0.0034374190567867807, -0.003816931017598682, -0.0042930433564585162,
    -0.0048620332769488727, -0.0055266772943441548, -0.0062943289369249179,
    0.0034138654349388261, 0.0031025961750660979, 0.0030382641925905686,
    0.0031681041524511335, 0.0034374190567867807, 0.003816931017598682,
    0.0042930433564585162, 0.0048620332769488727, 0.0055266772943441548,
    0.0062943289369249179, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, -1.0, -1.0, -1.0,
    -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
    1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0,
    -0.0, -0.0, -0.0, -0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0,
    -0.0, -0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, -0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 };

  static const real_T b_Kr[100] = { -0.007659788462934471,
    -0.0076599451754069238, -0.0, -0.0, -0.0, -0.027081906877523404,
    -0.027081939537660478, -0.0, -0.0, -0.0, -0.055521430149491638,
    -0.055521463503703322, -0.0, -0.0, -0.0, -0.091714412267133671,
    -0.0917144477263358, -0.0, -0.0, -0.0, -0.13524650445725389,
    -0.13524653956405491, -0.0, -0.0, -0.0, -0.1862554446738007,
    -0.186255477627808, -0.0, -0.0, -0.0, -0.24526212300020975,
    -0.24526215245145433, -0.0, -0.0, -0.0, -0.313077668868941,
    -0.31307769369944916, -0.0, -0.0, -0.0, -0.39075687308345963,
    -0.39075689226916338, -0.0, -0.0, -0.0, -0.4795804467845699,
    -0.47958045930672349, -0.0, -0.0, -0.0, -0.0043005341501471551,
    -0.0043009410137045774, -0.0, -0.0, -0.0, -0.0095330514387709266,
    -0.0095332142781475032, -0.0, -0.0, -0.0, -0.015191218451656876,
    -0.015191370323670704, -0.0, -0.0, -0.0, -0.021451053882874029,
    -0.021451204688865036, -0.0, -0.0, -0.0, -0.028477383882766025,
    -0.028477533974279112, -0.0, -0.0, -0.0, -0.036426295584528118,
    -0.036426444963319753, -0.0, -0.0, -0.0, -0.04545662478942486,
    -0.045456773410570611, -0.0, -0.0, -0.0, -0.055738147301051325,
    -0.05573829509057774, -0.0, -0.0, -0.0, -0.067457777611983682,
    -0.067457924472077144, -0.0, -0.0, -0.0, -0.080824762368710584,
    -0.080824908179764371, -0.0, -0.0, -0.0 };

  static const real_T c_a[100] = { 0.15834067289590797, 0.22015108075000833,
    0.027693980421881273, 0.13789159557417377, 0.13789151349543907, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.24599501793521644, 0.41773131840538219,
    0.058874146701514363, 0.24857370183516206, 0.24829634076574406, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.46182637136789323, 0.66184847246465817, 0.91357503408812657,
    0.45238752806496363, 0.45236715633702829, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.13967396740170271, 0.21221473600653715, 0.022339672771915009,
    0.15425818776660125, 0.13546285533737915, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.12614730812498864, 0.21839739204856434, 0.022286059947423855,
    0.13655461739755304, 0.15579657590396417, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 1.0 };

  static const real_T b_Ac[78] = { -0.007659788462934471, -0.027081906877523404,
    -0.055521430149491638, -0.091714412267133671, -0.13524650445725389,
    -0.1862554446738007, -0.24526212300020975, -0.313077668868941,
    -0.39075687308345963, -0.4795804467845699, 0.007659788462934471,
    0.027081906877523404, 0.055521430149491638, 0.091714412267133671,
    0.13524650445725389, 0.1862554446738007, 0.24526212300020975,
    0.313077668868941, 0.39075687308345963, 0.4795804467845699, -1.0, -0.0, 1.0,
    0.0, -1.0, 1.0, -0.0043005341501471551, -0.0095330514387709266,
    -0.015191218451656876, -0.021451053882874029, -0.028477383882766025,
    -0.036426295584528118, -0.04545662478942486, -0.055738147301051325,
    -0.067457777611983682, -0.080824762368710584, 0.0043005341501471551,
    0.0095330514387709266, 0.015191218451656876, 0.021451053882874029,
    0.028477383882766025, 0.036426295584528118, 0.04545662478942486,
    0.055738147301051325, 0.067457777611983682, 0.080824762368710584, -0.0, -1.0,
    0.0, 1.0, -0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
    1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 };

  static const real_T b_Mu1[52] = { -0.007659788462934471, -0.027081906877523404,
    -0.055521430149491638, -0.091714412267133671, -0.13524650445725389,
    -0.1862554446738007, -0.24526212300020975, -0.313077668868941,
    -0.39075687308345963, -0.4795804467845699, 0.007659788462934471,
    0.027081906877523404, 0.055521430149491638, 0.091714412267133671,
    0.13524650445725389, 0.1862554446738007, 0.24526212300020975,
    0.313077668868941, 0.39075687308345963, 0.4795804467845699, -1.0, -0.0, 1.0,
    0.0, 0.0, 0.0, -0.0043005341501471551, -0.0095330514387709266,
    -0.015191218451656876, -0.021451053882874029, -0.028477383882766025,
    -0.036426295584528118, -0.04545662478942486, -0.055738147301051325,
    -0.067457777611983682, -0.080824762368710584, 0.0043005341501471551,
    0.0095330514387709266, 0.015191218451656876, 0.021451053882874029,
    0.028477383882766025, 0.036426295584528118, 0.04545662478942486,
    0.055738147301051325, 0.067457777611983682, 0.080824762368710584, -0.0, -1.0,
    0.0, 1.0, 0.0, 0.0 };

  static const real_T a[50] = { 12.609730747256037, 19.669430276183476,
    9.0928195466370383, 12.629594526170219, 12.629593546414679,
    0.68399336970790225, -0.31572898223517709, -0.31523242932962148,
    -0.49171884902086244, -0.22731267245861972, 12.609729769038992,
    19.66942875028418, 9.09281884125028, 12.629593546399082, 12.629592566643636,
    -0.31572898223478724, 0.68399341869438257, -0.31523240487503623,
    -0.4917188108746916, -0.22731265482455626, 12.589898127410065,
    19.63849401483764, 9.07851832880149, 12.609730566488519, 12.609729588296096,
    -0.31523242481043362, -0.31523240035646372, 0.6849857455566124,
    -0.490945469078414, -0.22695515430489804, 19.63849433046369,
    30.633326152724017, 14.161228756856536, 19.669430308741216,
    19.669428782866255, -0.49171884983480496, -0.49171881168924358,
    -0.49094547696906715, 0.23391555509009171, -0.3540185459013791,
    9.0785173726845674, 14.161227169366562, 6.5464817014545007, 9.09281849684368,
    9.0928177915098622, -0.22731264621379035, -0.22731262858104917,
    -0.22695513040197482, -0.35401850621413716, 0.83606596132385513 };

  static const real_T b_a[50] = { 0.0, 0.0, 0.025, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.025, 0.0, 0.0, 0.0, 0.0, 0.0, 0.025, 0.025, 0.0, 0.0, 0.0, 0.0, 0.0, 0.025,
    0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0 };

  static const real_T e_a[50] = { 14.391733659358147, 22.449107818136095,
    10.377812299295087, 14.414404720140576, 14.414403601894913,
    0.68399337201645261, -0.31572897992756532, -0.31523242702444632,
    -0.49171884542640726, -0.22731267079572756, 14.391732543497367,
    22.449106077547256, 10.377811494657582, 14.414403602521633,
    14.414402484276055, -0.31572897993951621, 0.68399342098876437,
    -0.31523240258308494, -0.49171880730090239, -0.22731265317121369,
    14.369098240635662, 22.413799699815133, 10.36149003001236,
    14.391733641589518, 14.391732525094428, -0.3152324225075423,
    -0.315232398054456, 0.6849857478561594, -0.49094546549267304,
    -0.22695515264606966, 22.413799611333307, 34.962417746949924,
    16.162486647135623, 22.449107702400561, 22.449105960835297,
    -0.4917188462384896, -0.49171880809438273, -0.49094547337798644,
    0.23391556068962183, -0.35401854331089494, 10.361492216802011,
    16.162490071697952, 7.4716263093156376, 10.377814462112784,
    10.377813656987273, -0.22731264455094691, -0.22731262691887411,
    -0.22695512874155624, -0.35401850362504961, 0.83606596252163567 };

  static const real_T b_Mlim[26] = { 0.625, 0.625, 0.625, 0.625, 0.625, 0.625,
    0.625, 0.625, 0.625, 0.625, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125,
    0.125, 0.125, 0.125, 1.0, 1.0, -0.0, -0.0, 1.0, 1.0 };

  static const real_T b_Kx[20] = { 0.0203982474146362, 0.038482132325147973,
    0.22171170166165277, 0.019000466692383255, 0.019001117435269096,
    1.932156598625318, 1.9321570108617596, 0.0, 0.0, 0.0, 0.003739641697795594,
    0.0070494225472087953, 0.040150208553933989, 0.0034878465121822816,
    0.0034881690425768012, 0.3648568494619136, 0.36485861039497658, 0.0, 0.0,
    0.0 };

  static const real_T d_a[20] = { 0.31987167746491613, 0.42421897070131914,
    1.1897410261903705, 0.30639153851737883, 0.30639780701627695, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.29103322727101644, 0.30625213363137754, 0.095084828583881356,
    0.17202136600588619, 0.17203764054818307, 0.0, 0.0, 0.0, 0.0, 0.0 };

  static const real_T b_Hinv[9] = { 0.097392737653148, -0.4325670880738734, 0.0,
    -0.4325670880738734, 22.587151568721325, 0.0, 0.0, 0.0,
    9.9999999999999974E-6 };

  static const real_T b_Linv[9] = { 0.29851069469515129, -0.091017046786666139,
    0.0, 0.0, 4.752594193566428, 0.0, 0.0, 0.0, 0.003162277660168379 };

  static const real_T b_Ku1[4] = { 11.212256986797296, 0.21491771601329007,
    0.21491771601329007, 0.038388851833132231 };

  static const char_T tmp_0[7] = "valve1";
  static const char_T tmp_1[7] = "valve2";
  int8_T tmp;
  uint8_T dataIn;

  /* MATLAB Function: '<S25>/optimizer' incorporates:
   *  Constant: '<Root>/Constant'
   *  Memory: '<S5>/Memory'
   *  Memory: '<S5>/last_x'
   *  RateTransition generated from: '<S25>/optimizer'
   *  UnitDelay: '<S5>/last_mv'
   * */
  memset(&MPC_deploy_B.vseq[0], 0, 44U * sizeof(real_T));
  for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 11; MPC_deploy_B.i++) {
    MPC_deploy_B.vseq[(MPC_deploy_B.i << 2) + 3] = 1.0;
  }

  for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 10; MPC_deploy_B.b_i++) {
    for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 5; MPC_deploy_B.i++) {
      MPC_deploy_B.rseq[MPC_deploy_B.i + MPC_deploy_B.b_i * 5] =
        MPC_deploy_P.Constant_Value[MPC_deploy_B.i] * 0.025 - 1.0;
    }
  }

  for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 11; MPC_deploy_B.b_i++) {
    MPC_deploy_B.i = MPC_deploy_B.b_i << 2;
    MPC_deploy_B.vseq[MPC_deploy_B.i] =
      MPC_deploy_DW.TmpRTBAtoptimizerInport5_Buffer[0] - 0.1;
    MPC_deploy_B.vseq[MPC_deploy_B.i + 1] = 0.1 *
      MPC_deploy_DW.TmpRTBAtoptimizerInport5_Buffer[1] - 1.0;
    MPC_deploy_B.vseq[MPC_deploy_B.i + 2] = 0.025 *
      MPC_deploy_DW.TmpRTBAtoptimizerInport5_Buffer[2] - 1.0;
  }

  MPC_deploy_B.v_idx_0 = MPC_deploy_B.vseq[0];
  MPC_deploy_B.v_idx_1 = MPC_deploy_B.vseq[1];
  MPC_deploy_B.v_idx_2 = MPC_deploy_B.vseq[2];
  MPC_deploy_B.v_idx_3 = MPC_deploy_B.vseq[3];
  MPC_deploy_B.rtb_umin_scale1_idx_0 = MPC_deploy_DW.last_mv_DSTATE[0];
  MPC_deploy_B.rtb_umin_scale1_idx_1 = MPC_deploy_DW.last_mv_DSTATE[1];
  memcpy(&MPC_deploy_B.xk[0], &MPC_deploy_DW.last_x_PreviousInput[0], 10U *
         sizeof(real_T));
  for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 5; MPC_deploy_B.b_i++) {
    MPC_deploy_B.b_a[MPC_deploy_B.b_i] = 0.0;
    for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 10; MPC_deploy_B.i++) {
      MPC_deploy_B.b_a[MPC_deploy_B.b_i] += b_a[5 * MPC_deploy_B.i +
        MPC_deploy_B.b_i] * MPC_deploy_B.xk[MPC_deploy_B.i];
    }

    MPC_deploy_B.status = 0.0 * MPC_deploy_B.v_idx_3 + (0.0 *
      MPC_deploy_B.v_idx_2 + (0.0 * MPC_deploy_B.v_idx_1 + 0.0 *
      MPC_deploy_B.v_idx_0));
    MPC_deploy_B.y_innov[MPC_deploy_B.b_i] =
      (MPC_deploy_DW.TmpRTBAtoptimizerInport3_Buffer[MPC_deploy_B.b_i] * 0.025 -
       1.0) - (MPC_deploy_B.b_a[MPC_deploy_B.b_i] + MPC_deploy_B.status);
  }

  for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 10; MPC_deploy_B.b_i++) {
    MPC_deploy_B.status = 0.0;
    for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 5; MPC_deploy_B.i++) {
      MPC_deploy_B.status += a[10 * MPC_deploy_B.i + MPC_deploy_B.b_i] *
        MPC_deploy_B.y_innov[MPC_deploy_B.i];
    }

    MPC_deploy_B.xest[MPC_deploy_B.b_i] = MPC_deploy_B.xk[MPC_deploy_B.b_i] +
      MPC_deploy_B.status;
  }

  MPC_deploy_B.f[0] = 0.0;
  MPC_deploy_B.f[1] = 0.0;
  MPC_deploy_B.f[2] = 0.0;
  for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 2; MPC_deploy_B.i++) {
    MPC_deploy_B.b_Kx = 0.0;
    for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 10; MPC_deploy_B.b_i++) {
      MPC_deploy_B.b_Kx += b_Kx[10 * MPC_deploy_B.i + MPC_deploy_B.b_i] *
        MPC_deploy_B.xest[MPC_deploy_B.b_i];
    }

    MPC_deploy_B.b_Kr = 0.0;
    for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 50; MPC_deploy_B.b_i++) {
      MPC_deploy_B.b_Kr += b_Kr[50 * MPC_deploy_B.i + MPC_deploy_B.b_i] *
        MPC_deploy_B.rseq[MPC_deploy_B.b_i];
    }

    MPC_deploy_B.status = 0.0;
    for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 44; MPC_deploy_B.b_i++) {
      MPC_deploy_B.status += 0.0 * MPC_deploy_B.vseq[MPC_deploy_B.b_i];
    }

    MPC_deploy_B.b_i = MPC_deploy_B.i << 1;
    MPC_deploy_B.f[MPC_deploy_B.i] = ((b_Ku1[MPC_deploy_B.b_i + 1] *
      MPC_deploy_B.rtb_umin_scale1_idx_1 + b_Ku1[MPC_deploy_B.b_i] *
      MPC_deploy_B.rtb_umin_scale1_idx_0) + (MPC_deploy_B.b_Kx +
      MPC_deploy_B.b_Kr)) + MPC_deploy_B.status;
  }

  for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 26; MPC_deploy_B.i++) {
    MPC_deploy_B.iAnew[MPC_deploy_B.i] =
      MPC_deploy_DW.Memory_PreviousInput[MPC_deploy_B.i];
    MPC_deploy_B.status = 0.0;
    for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 10; MPC_deploy_B.b_i++) {
      MPC_deploy_B.status += b_Mx[26 * MPC_deploy_B.b_i + MPC_deploy_B.i] *
        MPC_deploy_B.xest[MPC_deploy_B.b_i];
    }

    MPC_deploy_B.b_Kx = 0.0;
    for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 44; MPC_deploy_B.b_i++) {
      MPC_deploy_B.b_Kx += -0.0 * MPC_deploy_B.vseq[MPC_deploy_B.b_i];
    }

    MPC_deploy_B.b_Mlim[MPC_deploy_B.i] = -(((b_Mlim[MPC_deploy_B.i] +
      MPC_deploy_B.status) + (b_Mu1[MPC_deploy_B.i + 26] *
      MPC_deploy_B.rtb_umin_scale1_idx_1 + b_Mu1[MPC_deploy_B.i] *
      MPC_deploy_B.rtb_umin_scale1_idx_0)) + MPC_deploy_B.b_Kx);
  }

  MPC_deploy_qpkwik(b_Linv, b_Hinv, MPC_deploy_B.f, b_Ac, MPC_deploy_B.b_Mlim,
                    MPC_deploy_B.iAnew, 120, 1.0E-6, MPC_deploy_B.zopt,
                    MPC_deploy_B.unusedU0, &MPC_deploy_B.status);
  if ((MPC_deploy_B.status < 0.0) || (MPC_deploy_B.status == 0.0)) {
    MPC_deploy_B.zopt[0] = 0.0;
    MPC_deploy_B.zopt[1] = 0.0;
  }

  MPC_deploy_DW.last_mv_DSTATE[0] = MPC_deploy_B.rtb_umin_scale1_idx_0 +
    MPC_deploy_B.zopt[0];
  MPC_deploy_DW.last_mv_DSTATE[1] = MPC_deploy_B.rtb_umin_scale1_idx_1 +
    MPC_deploy_B.zopt[1];

  /* DataTypeConversion: '<S1>/Data Type Conversion1' incorporates:
   *  Gain: '<S5>/umin_scale1'
   */
  MPC_deploy_B.status = floor(MPC_deploy_P.umin_scale1_Gain[0] *
    MPC_deploy_DW.last_mv_DSTATE[0]);
  if (rtIsNaN(MPC_deploy_B.status) || rtIsInf(MPC_deploy_B.status)) {
    MPC_deploy_B.status = 0.0;
  } else {
    MPC_deploy_B.status = fmod(MPC_deploy_B.status, 256.0);
  }

  /* MATLABSystem: '<S1>/MQTT Publish1' incorporates:
   *  DataTypeConversion: '<S1>/Data Type Conversion1'
   */
  dataIn = (uint8_T)(MPC_deploy_B.status < 0.0 ? (int32_T)(uint8_T)-(int8_T)
                     (uint8_T)-MPC_deploy_B.status : (int32_T)(uint8_T)
                     MPC_deploy_B.status);
  MPC_deploy_DW.obj.MW_dataType = MW_MQTT_UI8;
  MW_sprintf_mqtt(MPC_deploy_DW.obj.MW_dataType, 1U, &dataIn,
                  &MPC_deploy_B.payLoadStr, &MPC_deploy_B.stringPayloadLen);
  for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 7; MPC_deploy_B.b_i++) {
    MPC_deploy_B.topicStr[MPC_deploy_B.b_i] = tmp_0[MPC_deploy_B.b_i];
  }

  MW_MQTT_publish_step(0, 0, MPC_deploy_B.stringPayloadLen,
                       &MPC_deploy_B.payLoadStr, &MPC_deploy_B.topicStr[0], &tmp);

  /* End of MATLABSystem: '<S1>/MQTT Publish1' */

  /* DataTypeConversion: '<S1>/Data Type Conversion2' incorporates:
   *  Gain: '<S1>/Gain'
   *  Gain: '<S5>/umin_scale1'
   */
  MPC_deploy_B.status = floor(MPC_deploy_P.umin_scale1_Gain[1] *
    MPC_deploy_DW.last_mv_DSTATE[1] * MPC_deploy_P.Gain_Gain);
  if (rtIsNaN(MPC_deploy_B.status) || rtIsInf(MPC_deploy_B.status)) {
    MPC_deploy_B.status = 0.0;
  } else {
    MPC_deploy_B.status = fmod(MPC_deploy_B.status, 256.0);
  }

  /* MATLABSystem: '<S1>/MQTT Publish' incorporates:
   *  DataTypeConversion: '<S1>/Data Type Conversion2'
   */
  dataIn = (uint8_T)(MPC_deploy_B.status < 0.0 ? (int32_T)(uint8_T)-(int8_T)
                     (uint8_T)-MPC_deploy_B.status : (int32_T)(uint8_T)
                     MPC_deploy_B.status);
  MPC_deploy_DW.obj_f.MW_dataType = MW_MQTT_UI8;
  MW_sprintf_mqtt(MPC_deploy_DW.obj_f.MW_dataType, 1U, &dataIn,
                  &MPC_deploy_B.payLoadStr, &MPC_deploy_B.stringPayloadLen);
  for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 7; MPC_deploy_B.b_i++) {
    MPC_deploy_B.topicStr[MPC_deploy_B.b_i] = tmp_1[MPC_deploy_B.b_i];
  }

  MW_MQTT_publish_step(0, 0, MPC_deploy_B.stringPayloadLen,
                       &MPC_deploy_B.payLoadStr, &MPC_deploy_B.topicStr[0], &tmp);

  /* End of MATLABSystem: '<S1>/MQTT Publish' */

  /* MATLAB Function: '<S25>/optimizer' */
  MPC_deploy_B.rtb_umin_scale1_idx_0 = MPC_deploy_DW.last_mv_DSTATE[0];
  MPC_deploy_B.rtb_umin_scale1_idx_1 = MPC_deploy_DW.last_mv_DSTATE[1];
  for (MPC_deploy_B.b_i = 0; MPC_deploy_B.b_i < 10; MPC_deploy_B.b_i++) {
    MPC_deploy_B.xest[MPC_deploy_B.b_i] = 0.0;
    for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 10; MPC_deploy_B.i++) {
      MPC_deploy_B.xest[MPC_deploy_B.b_i] += c_a[10 * MPC_deploy_B.i +
        MPC_deploy_B.b_i] * MPC_deploy_B.xk[MPC_deploy_B.i];
    }

    MPC_deploy_B.e_a[MPC_deploy_B.b_i] = 0.0;
    for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 5; MPC_deploy_B.i++) {
      MPC_deploy_B.e_a[MPC_deploy_B.b_i] += e_a[10 * MPC_deploy_B.i +
        MPC_deploy_B.b_i] * MPC_deploy_B.y_innov[MPC_deploy_B.i];
    }

    /* Update for Memory: '<S5>/last_x' */
    MPC_deploy_DW.last_x_PreviousInput[MPC_deploy_B.b_i] = ((((0.0 *
      MPC_deploy_B.v_idx_0 + 0.0 * MPC_deploy_B.v_idx_1) + 0.0 *
      MPC_deploy_B.v_idx_2) + 0.0 * MPC_deploy_B.v_idx_3) +
      (MPC_deploy_B.xest[MPC_deploy_B.b_i] + (d_a[MPC_deploy_B.b_i + 10] *
      MPC_deploy_B.rtb_umin_scale1_idx_1 + d_a[MPC_deploy_B.b_i] *
      MPC_deploy_B.rtb_umin_scale1_idx_0))) + MPC_deploy_B.e_a[MPC_deploy_B.b_i];
  }

  /* Update for Memory: '<S5>/Memory' incorporates:
   *  MATLAB Function: '<S25>/optimizer'
   */
  for (MPC_deploy_B.i = 0; MPC_deploy_B.i < 26; MPC_deploy_B.i++) {
    MPC_deploy_DW.Memory_PreviousInput[MPC_deploy_B.i] =
      (MPC_deploy_B.iAnew[MPC_deploy_B.i] != 0);
  }

  /* End of Update for Memory: '<S5>/Memory' */
}

/* Model step wrapper function for compatibility with a static main program */
void MPC_deploy_step(int_T tid)
{
  switch (tid) {
   case 0 :
    MPC_deploy_step0();
    break;

   case 1 :
    MPC_deploy_step1();
    break;

   default :
    break;
  }
}

/* Model initialize function */
void MPC_deploy_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  {
    static const char_T tmp_0[6] = "temp1";
    static const char_T tmp_1[6] = "temp2";
    static const char_T tmp_2[6] = "temp3";
    static const char_T tmp_3[6] = "temp4";
    static const char_T tmp_4[6] = "temp5";
    static const char_T tmp_5[6] = "flow1";
    static const char_T tmp_6[6] = "temp6";
    static const char_T tmp_7[6] = "temp7";
    int32_T i;
    char_T topicRegExpStr[6];
    char_T topicStr[6];
    char_T tmp;

    /* InitializeConditions for Memory: '<S5>/last_x' */
    memcpy(&MPC_deploy_DW.last_x_PreviousInput[0],
           &MPC_deploy_P.last_x_InitialCondition[0], 10U * sizeof(real_T));

    /* InitializeConditions for UnitDelay: '<S5>/last_mv' */
    MPC_deploy_DW.last_mv_DSTATE[0] = MPC_deploy_P.last_mv_InitialCondition[0];
    MPC_deploy_DW.last_mv_DSTATE[1] = MPC_deploy_P.last_mv_InitialCondition[1];

    /* InitializeConditions for Memory: '<S5>/Memory' */
    for (i = 0; i < 26; i++) {
      MPC_deploy_DW.Memory_PreviousInput[i] =
        MPC_deploy_P.Memory_InitialCondition[i];
    }

    /* End of InitializeConditions for Memory: '<S5>/Memory' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe6' */
    MPC_deploy_DW.obj_m.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_m.isSetupComplete = false;
    MPC_deploy_DW.obj_m.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_0[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_m.subscribeID);
    MPC_deploy_DW.obj_m.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe6' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe1' */
    MPC_deploy_DW.obj_l.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_l.isSetupComplete = false;
    MPC_deploy_DW.obj_l.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_1[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_l.subscribeID);
    MPC_deploy_DW.obj_l.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe1' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe2' */
    MPC_deploy_DW.obj_n.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_n.isSetupComplete = false;
    MPC_deploy_DW.obj_n.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_2[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_n.subscribeID);
    MPC_deploy_DW.obj_n.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe2' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe3' */
    MPC_deploy_DW.obj_e.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_e.isSetupComplete = false;
    MPC_deploy_DW.obj_e.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_3[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_e.subscribeID);
    MPC_deploy_DW.obj_e.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe3' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe4' */
    MPC_deploy_DW.obj_h.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_h.isSetupComplete = false;
    MPC_deploy_DW.obj_h.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_4[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_h.subscribeID);
    MPC_deploy_DW.obj_h.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe4' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe5' */
    MPC_deploy_DW.obj_o.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_o.isSetupComplete = false;
    MPC_deploy_DW.obj_o.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_5[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_o.subscribeID);
    MPC_deploy_DW.obj_o.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe5' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe7' */
    MPC_deploy_DW.obj_k.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_k.isSetupComplete = false;
    MPC_deploy_DW.obj_k.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_6[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_k.subscribeID);
    MPC_deploy_DW.obj_k.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe7' */

    /* Start for MATLABSystem: '<S4>/MQTT Subscribe8' */
    MPC_deploy_DW.obj_g.matlabCodegenIsDeleted = false;
    MPC_deploy_DW.obj_g.isSetupComplete = false;
    MPC_deploy_DW.obj_g.isInitialized = 1;
    for (i = 0; i < 6; i++) {
      tmp = tmp_7[i];
      topicStr[i] = tmp;
      topicRegExpStr[i] = tmp;
    }

    MW_MQTT_subscribe_setup(&topicStr[0], &topicRegExpStr[0],
      &MPC_deploy_DW.obj_g.subscribeID);
    MPC_deploy_DW.obj_g.isSetupComplete = true;

    /* End of Start for MATLABSystem: '<S4>/MQTT Subscribe8' */

    /* Start for MATLABSystem: '<S1>/MQTT Publish1' */
    MPC_deploy_DW.obj.isInitialized = 1;
    MW_MQTT_publish_setup();

    /* Start for MATLABSystem: '<S1>/MQTT Publish' */
    MPC_deploy_DW.obj_f.isInitialized = 1;
    MW_MQTT_publish_setup();
  }
}

/* Model terminate function */
void MPC_deploy_terminate(void)
{
  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe6' */
  if (!MPC_deploy_DW.obj_m.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_m.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe6' */

  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe1' */
  if (!MPC_deploy_DW.obj_l.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_l.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe1' */

  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe2' */
  if (!MPC_deploy_DW.obj_n.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_n.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe2' */

  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe3' */
  if (!MPC_deploy_DW.obj_e.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_e.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe3' */

  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe4' */
  if (!MPC_deploy_DW.obj_h.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_h.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe4' */

  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe5' */
  if (!MPC_deploy_DW.obj_o.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_o.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe5' */

  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe7' */
  if (!MPC_deploy_DW.obj_k.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_k.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe7' */

  /* Terminate for MATLABSystem: '<S4>/MQTT Subscribe8' */
  if (!MPC_deploy_DW.obj_g.matlabCodegenIsDeleted) {
    MPC_deploy_DW.obj_g.matlabCodegenIsDeleted = true;
  }

  /* End of Terminate for MATLABSystem: '<S4>/MQTT Subscribe8' */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
