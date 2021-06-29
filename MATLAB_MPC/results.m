%% Plotting the simulation results:

%% 
figure(1)



T_ambient= out.logsout{1}.Values.Data;
SP_comp = out.logsout{2}.Values.Data ;
SP_elec = out.logsout{3}.Values.Data ;
COP_logged = out.logsout{4}.Values.Data;
% out.logsout{5}.Values.Data =  
% out.logsout{6}.Values.Data =
T3= out.logsout{7}.Values.Data;
T4= out.logsout{8}.Values.Data;
T5= out.logsout{9}.Values.Data ;
T1= out.logsout{10}.Values.Data;
T2= out.logsout{11}.Values.Data ;
DHW_logged= out.logsout{12}.Values.Data;
% %%
% figure(1)
% plot(out.tout,T_ambient)
% xlabel('Time [s]')
% ylabel('Ambient Temperature [C]')
% legend('Ambient Temperature')
% grid on
% %%
% figure(2)
% plot(out.tout,DHW_logged)
% xlabel('Time [s]')
% ylabel('DHW demand [Kg/s]')
% legend('DHW')
% grid on
%%
figure(3)
plot(out.tout,T1, out.tout,T2,out.tout,T3,...
    out.tout,T4,out.tout,T5)
xlabel('Time [s]')
ylabel('Temperature [C]')
legend('T1','T2','T3','T4','T5')
grid on
%%
figure(4)
plot(SP_comp)
hold on
plot(SP_elec)
xlabel('Time [s]')
ylabel('Setpoint [x 100%]')
legend('Heat pump compressor','Electric heater')
grid on
%%
figure()
plot(time, T_ambient_sim)
xlabel('Time [s]')
ylabel('Ambient Temperature [C]')
grid on
%%
figure()
plot(time, Tambient_sim)
xlabel('Time [s]')
ylabel('Ambient Temperature [C]')
grid on
%%
