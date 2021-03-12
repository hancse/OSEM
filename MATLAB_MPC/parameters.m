

%% General:


%% Solar panel parameters:
% Number of PV panels on the roof:
Npv=6;
% PV reference efficincy:
eta_pv = 0.15;
% PV reference temperaure [c]:
T_ref= 25;
% PV thermal coefficient [1/C]:
beta_pv = 0.0045;
% Nominal operating cell temperature[C]:
T_NOCT = 45;

%% Heat Pump parameters:
% Evaporator heat capacity [J/K]: 
Cev = 1897;%648;
% Condensor heat capacity [J/K]:
Cc = 11030; %984* 1.23;
% Maximum compressor power [W][3600]:
P_HP_max = 1000;
% Air mass flow rate through evaporator [Kg/h]:
m_air = (2000 *1.225) ; % [m3/h][Kg/m3]
% Water mass flow rate through condensor [Kg/s][3600]=[Kg/h]:
m_water = 10e-5*3600;
% Specific heat capacity of air [J/(Kg K)]:
C_pair= 1006;
% Specific heat capacity of water [J/(Kg K)]:
C_pw = 4182;
% Density of water [Kg/m3];
rho_w = 1000;

%% Boiler Tank Parameters:
% Tank volume [m3]:
V_t = 0.3;
% Maximum electric heater power [W][3600]:
P_heater_max = 4000;
% Heat transfer rate of the heat exchanger [W/(m2 K)][3600]:
alpha_HE = 2500*3600;
% Radius of the heat exchanger tube [m]:
r_HE = 0.006;
% Length of the heat exchnager tube [m]:
l_HE = 4;
% Length of each HE section[m];
delta_HE = l_HE/4;
% Distance between the boiler tank and the HP condensor [m]:
D = 10;

%% Initial conditions:

T_tank_0 = 273+15;

T_HE_0 = 273+40;
