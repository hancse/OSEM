diff a/MATLAB_MPC/Parameters.m b/MATLAB_MPC/Parameters.m	(rejected hunks)
@@ -1,56 +0,33 @@
-
-
-%% General:
-
-
-%% Solar panel parameters:
-% Number of PV panels on the roof:
-Npv=6;
-% PV reference efficincy:
-eta_pv = 0.15;
-% PV reference temperaure [c]:
-T_ref= 25;
-% PV thermal coefficient [1/C]:
-beta_pv = 0.0045;
-% Nominal operating cell temperature[C]:
-T_NOCT = 45;
-
-%% Heat Pump parameters:
-% Evaporator heat capacity [J/K]: 
-Cev = 1897;%648;
-% Condensor heat capacity [J/K]:
-Cc = 11030; %984* 1.23;
-% Maximum compressor power [W][3600]:
-P_HP_max = 1000;
-% Air mass flow rate through evaporator [Kg/h]:
-m_air = (2000 *1.225) ; % [m3/h][Kg/m3]
-% Water mass flow rate through condensor [Kg/s][3600]=[Kg/h]:
-m_water = 10e-5*3600;
-% Specific heat capacity of air [J/(Kg K)]:
-C_pair= 1006;
-% Specific heat capacity of water [J/(Kg K)]:
-C_pw = 4182;
-% Density of water [Kg/m3];
-rho_w = 1000;
-
-%% Boiler Tank Parameters:
-% Tank volume [m3]:
-V_t = 0.3;
-% Maximum electric heater power [W][3600]:
-P_heater_max = 4000;
-% Heat transfer rate of the heat exchanger [W/(m2 K)][3600]:
-alpha_HE = 2500*3600;
-% Radius of the heat exchanger tube [m]:
-r_HE = 0.006;
-% Length of the heat exchnager tube [m]:
-l_HE = 4;
-% Length of each HE section[m];
-delta_HE = l_HE/4;
-% Distance between the boiler tank and the HP condensor [m]:
-D = 10;
-
-%% Initial conditions:
-
-T_tank_0 = 273+15;
-
-T_HE_0 = 273+40;
+%% Tank Parameters:
+% Heat conduction coefficient of heating coil [W/K]
+k = 469;
+% Specific heat coefficient (at constant pressure) of water [J/Kg K]
+Cp =4180;
+% Mass flow of heating water through coil [Kg/s]
+mdot = 0.1667;
+% Size of element (length) [m]
+dx = 0.2147;
+% Conductivity (Steel) [W/(m K)]
+lambda_s = 14.4;
+% Conductivity (water) [W/(m K)]
+lambda_w = 0.591; 
+% Number of elements (water layers)
+N=5;
+% Temperature of cold inlet water [C]:
+T_cold = 10;
+% Heat capacit yof a single element (including water and wall [J/K]:
+Ce = 191400;
+% Heat conductivity [W m/K]:
+UA = 0.2072;
+% Heat loss coefficient of the tank [W/(m2 K)]
+Kloss = 3.82;
+% Surface area of the tank [m2]:
+Atank = 1.69;
+% time constant of convection (should be <100) [s]:
+tau = 10;
+% temperature surrounding the tank [C]:
+T_outside = 20;
+%% Initial temperatures in the tank layers:
+T0 = 40;
+% temperature setpoints:
+Tref = [50 50 40 30 20];
