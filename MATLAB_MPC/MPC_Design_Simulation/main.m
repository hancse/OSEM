%% Main Script
% This script does the following:
% 1) Loads the physical parameters of the heat pump and the tank.

% 2) Loads the external datastets required for simulation, namely:
    % global solar rradiation (Source: KNMI).
    % ambient temperature (Source: KNMI).
    % DHW usage profile (Source: European Directive).

% 3) Design of the MPC controller.

% 4) Invoke Simulink to simulate the dynamic system with MPC controller.

% 5) Visualize the simulation results

%% Prepare the workspace: 
 
%% Load the system's physical parameters.
parameters;

%% Load the external datasets
External_datasets;

%% Configure the model predictive Controller:
MPC_settings;
load('plant_ss_model')
MPC_code_29_3;
%% Simulate the system:
sim('MPC_v02.slx')

%% visualize the results:
results;