clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
f=1;
t=tmin:td:tmax;
x = sin(2*pi*f.*t)./(2*pi*f.*t);
plot(t,x);
