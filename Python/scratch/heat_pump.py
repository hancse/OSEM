
# COP = Q_p/ P_hp
# COP = T_cond/ (T_cond - T_evap)

from scipy.integrate import  solve_ivp
from numpy.polynomial import Polynomial

"""
def controllerTemperatureandBuffervessel(setpointTemperature, setpointBuffervessel, Tair, Tbuffervessel):
    errorbuffervessel = setpointBuffervessel - Tbuffervessel
    errorroomtemperature = setpointTemperature - Tair

    Qinst = errorbuffervessel * 300
    Qinst = np.clip(Qinst, 0, 12000)

    mdot = np.clip(errorroomtemperature * 0.05, 0, 0.15)
    return Qinst, mdot
"""

def model_heatpump(t, x, inputs):  # , C_ev, C_c, m_dot, Cp_air, Cp_w, P_hp, COP):
    """model function for scipy.integrate.solve_ivp

    Args:
        t:
        x:

    Returns:

    """
    # States :
    Tair_out = x[0]
    Tw_out = x[1]
    Tair_in = inputs[0]
    Tw_in = inputs[1]
    Cp_air = inputs[2]
    Cp_w = inputs[2]
    P_hp = inputs[2]
    COP = inputs[2]
    C_evap = inputs[2]
    C_cond = inputs[2]
    m_dot = 0
    T_air = 20

    # Parameters :
    # setpointRoomTemperature = SP_T[int(t / 3600)]
    # setpointBuffervessel = 80

    # Control :
    # Qinst, mdot = controllerTemperatureandBuffervessel(setpointRoomTemperature, setpointBuffervessel, Tair, Tbuffervessel)

    # Equations :
    Q_ev = P_hp * (COP-1)

    dTair_out_dt = (m_dot * Cp_air * (Tair_in - Tair_out) - Q_ev) / C_evap
    dTw_out_dt = (m_dot * Cp_w * (Tw_in - Tw_out) + T_air - P_hp) / C_cond   # T_air ???

    return [dTair_out_dt, dTw_out_dt]


def heatpumpsolver(time_sim, Tair_in, Tw_in, Ca, Cw, P_hp, COP, Cevap, Ccond):

    # initial values for solve_ivp
    Tair_out_zero = 20
    Tw_out_zero = 20
    # energy0 = 0

    y0 = [Tair_out_zero, Tw_out_zero]

    t = time_sim  # Define Simulation time with sampling time

    inputs = (Tair_in, Tw_in, Ca, Cw, P_hp, COP, Cevap, Ccond)  # tuple
    result = solve_ivp(model_heatpump, [0, t[-1]], y0,
                  method='RK45', t_eval=time_sim,
                  args=inputs)

    Tair = result.y[0, :]
    Twall = result.y[1, :]
    Treturn = result.y[2, :]
    Tbuffervessel = result.y[3, :]
    print(result.y[4, -1] / 3600000)
    return Tair, Twall, Treturn, Tbuffervessel, result.ty


def HP_equation(T_amb, T_inlet_cond, P_compressor_kW, SP_compressor):
    p = Polynomial([7.4545, -0.138, 0.0008])
    cop = p(T_inlet_cond - T_amb)
    q_hp_W = cop * (P_compressor_kW * 1000) * SP_compressor
    return cop, q_hp_W


if __name__ == "__main__":
    COP, Q_hp = HP_equation(0, 30, 5, 1.0)
    print(COP, Q_hp)
    # heatpumpsolver()



