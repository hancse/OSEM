
import numpy as np

def st_conduction():
    pass

def st_convection():
    pass

def tank_equation(DHW, Taround=20):
    tap = DHW/3600  # from l/h to l/s


def layer_equation(num_tank, Kloss, Atank, num_layers,P_compressor_kW, Taround=20):
    loss = Kloss * (Atank / num_layers) * (T1 - Taround)

    Tp = Polynomial([7.4545, -0.138, 0.0008])
    cop = p(T_inlet_cond - T_amb)
    q_hp_W = cop * (P_compressor_kW * 1000) * SP_compressor
    return cop, q_hp_W

def Qconv(u1, u2, u3, u4, u5):
    tau = 10
    C = 191400
    U = np.array([u1, u2, u3, u4, u5])

    Qconv = np.zeros(5)
    differences = np.diff(U)
    isDecreasing = np.all(differences < 0)

    if isDecreasing:      # no inversion, no convection flux
        return Qconv
    else:
        pos = np.where[diff > 0]
        Tmean = np.sum(U) / pos[0]
        for j in 5:-1:1:
            if j > i:
                Qconv(j) = 0
            else:
                Qconv(j) = (Tmean - U(j)) * C / tau
    return Qconv



if __name__ == "__main__":
    Qconv(90, 80, 70, 60, 50)
