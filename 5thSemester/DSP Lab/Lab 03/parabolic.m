clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
t=tmin:td:tmax;
x =(t.^2);
subplot(1,1,1);
plot(t,x);
