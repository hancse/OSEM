
# Tank Parameters:
# Heat conduction coefficient of heating coil [W/K]
k : 469
# Specific heat coefficient (at constant pressure) of water [J/Kg K]
Cp :4180
# Mass flow of heating water through coil [Kg/s]
mdot : 0.1667
# Size of element (length) [m]
dx : 0.2147
# Conductivity (Steel) [W/(m K)]
lambda_s : 14.4
# Conductivity (water) [W/(m K)]
lambda_w : 0.591
# Number of elements (water layers)
N:5
# Temperature of cold inlet water [C]:
T_cold : 10
# Heat capacit yof a single element (including water and wall [J/K]:
Ce : 191400
# Heat conductivity [W m/K]:
UA : 0.2072
# Heat loss coefficient of the tank [W/(m2 K)]
Kloss : 3.82
# Surface area of the tank [m2]:
Atank : 1.69
# time constant of convection (should be <100) [s]:
tau : 10
# temperature surrounding the tank [C]:
T_outside : 20
## Initial temperatures in the tank layers:
T0 : 40
# temperature setpoints:
Tref : [50 50 40 30 20]
