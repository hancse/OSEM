%% Main Script


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