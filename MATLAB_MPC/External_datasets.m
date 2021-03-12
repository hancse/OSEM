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
%% Hot water tapping profile [l/h]:
DHW = importdata('DHW.txt');



