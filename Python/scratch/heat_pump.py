
COP = Q_p/ P_hp

COP = T_cond/ (T_cond - T_evap)


def model_heatpumpl(t, x, C_ev, C_c, m_dot, Cp_air, Cp_w, Q_ev):
    """

    Args:
        t:
        x:
        C_ev:
        C_c:
        m_dot:
        Cp_air:
        Cp_w:
        Q_ev:

    Returns:

    """
    # States :
    Tair_out = x[0]
    Tw_out = x[1]

    # Control :

    # Equations :

    dTair_out_dt = (m_dot * Cp_air * (Tair_in - Tair_out) - Q_ev) / C_ev
    dTw_out_dt = (m_dot * Cp_w * (Tw_in - Tw_out) + T_air - P_hp) / C_c   # T_air ???


    return [dTair_out_dt, dTw_out_dt]

if __name_ == "_ main_":
    pass

