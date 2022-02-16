% This script imports daasets of solar irradiation, ambient temperature and
% DHW usage profile


%% Solar irradiation data [W/m2]:
G = xlsread('Climate260.xls','C28:C8788');

%% Ambient temperature data [C]:
Ta= xlsread('Climate260.xls','D28:D8788');

%% Hot water usage data [m3/s]:
DHW = zeros(8760,1);

%% time:
t= 1:1:8760;
t=t';
counter=1;
%% MPC weights:
% favor the use of the HP when the ambient temp is low:
W_HP = Ta.^2;
W_HP = W_HP';
% Favor the use of the eectric heater when there is PV production:
W_electric = G+10;
W_electric = W_electric';

%% Data plots:
figure(1)
title('Climate datasets')
subplot(2,1,1)
plot(t,G)
xlabel('time [hour]')
ylabel('GLobal Irradiation [w/m2]')
subplot(2,1,2)
plot(t,Ta)
xlabel('Time [hour]')
ylabel('ambient temperature [C]')
