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
title('Temperature profile in the tank')
plot(T1(:,1),T1(:,2))
hold on
plot(T2(:,1),T2(:,2))
plot(T3(:,1),T3(:,2))
plot(T4(:,1),T4(:,2))
plot(T5(:,1),T5(:,2))
grid on
legend('T_1','T_2','T_3','T_4','T_5')
xlabel('Time')
ylabel('Temperature [C]')
%%
figure(3)
title('Actuators setpoints')
plot(SP_comp(:,1),SP_comp(:,2))
hold on
plot(SP_elec(:,1),SP_elec(:,2))
xlabel('time')
ylabel('Set Point [x 100%]')
legend('Heat Pump','ELectric Heater')
grid on