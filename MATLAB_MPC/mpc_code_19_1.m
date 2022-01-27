%% create MPC controller object with sample time
mpc1 = mpc(plant_C, 60);
%% specify prediction horizon
mpc1.PredictionHorizon = 10;
%% specify control horizon
mpc1.ControlHorizon = 1;
%% specify nominal values for inputs and outputs
mpc1.Model.Nominal.U = [0;0;3;2.783;40];
mpc1.Model.Nominal.Y = [40;40;40;40;40];
%% specify scale factors for inputs and outputs
mpc1.DV(2).ScaleFactor = 15;
mpc1.DV(3).ScaleFactor = 40;
mpc1.OV(1).ScaleFactor = 40;
mpc1.OV(2).ScaleFactor = 40;
mpc1.OV(3).ScaleFactor = 40;
mpc1.OV(4).ScaleFactor = 40;
mpc1.OV(5).ScaleFactor = 40;
%% specify constraints for MV and MV Rate
mpc1.MV(1).Min = 0;
mpc1.MV(1).Max = 1;
mpc1.MV(2).Min = 0;
mpc1.MV(2).Max = 1;
mpc1.MV(2).RateMin = -0.5;
mpc1.MV(2).RateMax = 0.5;
%% specify constraints for OV
mpc1.OV(1).Min = 40;
mpc1.OV(1).Max = 65;
mpc1.OV(2).Max = 65;
mpc1.OV(3).Max = 65;
mpc1.OV(4).Max = 65;
mpc1.OV(5).Max = 65;
%% specify weights
mpc1.Weights.MV = [1 0.1];
mpc1.Weights.MVRate = [0.1 0.1];
mpc1.Weights.OV = [10 1 0.1 0.1 0.1];
mpc1.Weights.ECR = 100000;
%% specify simulation options
options = mpcsimopt();
options.RefLookAhead = 'off';
options.MDLookAhead = 'off';
options.Constraints = 'on';
options.OpenLoop = 'off';
%% run simulation
sim(mpc1, 11, mpc1_RefSignal, mpc1_MDSignal, options);
