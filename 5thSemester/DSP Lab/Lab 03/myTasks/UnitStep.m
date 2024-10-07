clc
clear all

tmin = -5;
td = 0.1;
tmax = 5;

t = tmin:td:tmax;
x = (1 .* t >= 0);

plot(t, x, 'LineWidth', 2);
title('Unit Step Signal');
xlabel('Time'); 
ylabel('Amplitude');
grid on;

legend('Unit Step Signal'); 

