clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
t=tmin:td:tmax;
T=2;
f=1/T;
x =sin(2*pi*f*t);
plot(t,x, 'LineWidth', 2);
title('Sinusoidal Signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on;

legend('Sinusoidal Signal');
