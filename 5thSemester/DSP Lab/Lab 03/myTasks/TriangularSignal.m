clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
t=tmin:td:tmax;
x = (t >= -1 & t <= 1).*(1 - abs(t));
plot(t,x);
grid on

plot(t, x, 'LineWidth', 2);
title('Triangular Signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on;

legend('Triangular Signal'); 
