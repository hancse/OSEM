%% %%%%%%%%%%%%%%%%%%%% MPC Settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Controller sample time [s]
t_smpc = 60;
% Prediction horizon [in samples]:
PH = 10;
% Control horizon [in samples]:
CH=1;

%% Weights Configuration:
G_mpc = kron(G,ones(6,1));
% Weight of the PV in the cost function (between 0 and 1):
W_pv = G_mpc./max(G_mpc);

Tamb_mpc = kron(Tambient,ones(6,1)); 
% Wight of the COP:
W_cop = abs(Tamb_mpc)./max(Tamb_mpc);

% Weight of the heat pump in the cost function:
W_hp = 1.* W_pv .* W_cop;
WW_hp = repmat(W_hp,2,1);

% Weight of the electric heater in the cost function:
W_elec = 1.* W_pv .* W_cop;
WW_elec= repmat(W_elec,2,1);

%% 
%load('Design_session_19_1.mat')
%% 
global i
i =0;