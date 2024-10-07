clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
t=tmin:td:tmax;
x =  t .* t;

plot(t,x, 'LineWidth', 2);
title('Parabolic Signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on;

legend('Parabolic Signal');