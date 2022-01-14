%% Plotting the simulation results:

%% 
figure(1)
title('Datasets used in SImulation')
subplot(3,1,1)
plot(T_ambient(:,1),T_ambient(:,2))
xlabel('Time')
ylabel('Ambient temperature [C]')
grid on
subplot(3,1,2)
plot(time, G_sim)
xlabel('Time')
ylabel('Global Irradiation [W/m^2]')
grid on
subplot(3,1,3)
plot(DHW(:,1),DHW(:,2))
xlabel('Time')
ylabel('DHW demand [Kg/s]')
set(gca,'XTickLabel',['0  ';'100'])

grid on
%%
figure(2)
tt = 0:minutes(10):minutes(1440);

title('Temperature profile in the tank')
plot(tt,sensors(:,1))
hold on
plot(tt,sensors(:,2))
plot(tt,sensors(:,3))
plot(tt,sensors(:,4))
plot(tt,sensors(:,5))
xlabel('Time [HH:MM]')
ylabel('Temperature [C]')
xtickformat('hh:mm')
grid on
grid minor
legend('T_1','T_2','T_3','T_4','T_5')
hold off
%%
figure(3)
title('Actuators setpoints')
plot(tt, Actuator(:,1),tt,Actuator(:,2)))
xlabel('Time [HH:MM]')
ylabel('Set Point [x 100%]')
legend('Heat Pump','ELectric Heater')
grid on
grid minor