clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
t=tmin:td:tmax;

x = sinc(t)

plot(t, x, 'LineWidth', 2);
title('Sinc Signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on;

legend('Sinc Signal'); 