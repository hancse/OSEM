%% Plotting the simulation results:


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
plot(tt, Actuators(:,1),tt,Actuators(:,2))
xlabel('Time [HH:MM]')
ylabel('Set Point [x 100%]')
xtickformat('hh:mm')
legend('ELectric Heater','Heat Pump')
grid on
grid minor
hold off