%% Main Script
% This script does the following:
% - Loads the physical parameters of the heat pump and the tank.

% - Loads the external datastets required for simulation, namely global solar
% irradiation (KNMI), ambient temperature (KNMI) and the DHW usage profile (university of Kessel).

% - Design of the MPC controller.

% - Invoke Simulink to simulate the dynamic system with MPC controller.

%- Visualize the simulation results
clear all
clc
%% Load the system's physical parameters.
parameters;

%% Load the external datasets
External_datasets;

%% Configure the model predictive Controller:
MPC_settings;

%% Simulate the system:
sim('MPC_v02.slx')

%% visualize the results:
%results;