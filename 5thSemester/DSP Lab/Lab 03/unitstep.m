clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
t=tmin:td:tmax;
x1=1;
x2=0;
x=x1.*(t>=0)+x2.*(t<0);
subplot(3,3,2);
plot(t,x);
axis([-6 6 -1 2]);