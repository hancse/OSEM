%% Main Script
% This script does the following:
% 1) Loads the physical parameters of the heat pump and the tank.

% 2) Loads the external datastets required for simulation, namely global solar
% irradiation (KNMI), ambient temperature (KNMI) and the DHW usage profile (university of Kessel).

% 3) Design of the MPC controller.

% 4) Invoke Simulink to simulate the dynamic system with MPC controller.

% 5) Visualize the simulation results

%% Prepare the workspace: 
clear all
close all
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
results;