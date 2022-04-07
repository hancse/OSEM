% This script imports daasets of solar irradiation, ambient temperature and
% DHW usage profile

% Daay of the year (1 to 365)
Day = 20;
%% Solar irradiation data [W/m2]:
% Hourly values for one year (Source KNMI)
load('SolarIrradiationData');
% Hourly data for a period of one day:
G=Irr(24*Day:24*Day+23);
% Data per minute:
G_sim=kron(G,ones(60,1));

%% Ambient temperature data [C]:
% Hourly values for one year (Source KNMI)
load('AmbientTempData');
Tambient = Tamb(24*Day:24*Day+23);
Tambient_sim = kron(Tambient,ones(60,1));
time = 0:60:(24*60*60)-60;
time=time';
%% Hot water tapping profile [l/min] interval 15 minutes:
%DHW = importdata('DHW0001_DHW.txt');
DHW = zeros(1440,1);
% Define draw-offs according to standard
DHW(7*60)=3;
DHW((7*60)+5)=6;
DHW((7*60)+30)=3;
DHW((8*60)+1)=3;
DHW((8*60)+15)=3;
DHW((8*60)+30)=3;
DHW((8*60)+45)=3;
DHW(9*60)=3;
DHW((9*60)+30)=3;
DHW((10*60)+30)=3;
DHW((11*60)+30)=3;
DHW((11*60)+45)=3;
DHW((12*60)+45)=4;
DHW((14*60)+30)=3;
DHW((15*60)+30)=3;
DHW((16*60)+30)=3;
DHW((18*60)+0)=3;
DHW((18*60)+15)=3;
DHW((18*60)+30)=3;
DHW((19*60)+0)=3;
DHW((20*30)+30)=4;
DHW((21*30)+15)=3;
DHW((21*60)+30)=4;

DHW=DHW.*2;
%% Generate plots
t = 0:minutes(1):minutes(1439);
t=t';

figure()
title('Simulation Inputs')
subplot(3,1,1)
plot(t,G_sim)
xlabel('Time [HH:MM]')
ylabel('Solar Irradiation [W/m^2]')
xtickformat('hh:mm')
grid on
grid minor

subplot(3,1,2)
plot(t,Tambient_sim)
xlabel('Time [HH:MM]')
ylabel('Ambient Temperature [C]')
xtickformat('hh:mm')
grid on
grid minor

subplot(3,1,3)
plot(t,DHW)
xlabel('Time [HH:MM]')
ylabel('DHW draw-offs [l/min]')
xtickformat('hh:mm')
grid on
grid minor
hold off
%%








         


