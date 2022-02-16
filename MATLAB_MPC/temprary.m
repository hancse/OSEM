figure()
tt = 0:minutes(10):minutes(1440);
plot(tt,sensors(:,1))
xlabel('Time [HH:MM]')
ylabel('Ambient Temperature [C]')
xtickformat('hh:mm')
grid on
grid minor