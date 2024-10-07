clc 
clear all
tmin = -5;
td =0.1;
tmax =5;
t=tmin:td:tmax;

T0=0.1;
f0=1/T0;
w0=2*pi*f0;

T1=1;
f1=1/T1;
w1=2*pi*f1;

x = sin(2.*pi.*f1.*t);

y=fft(x);

subplot(2,1,1)
plot(t,x);
grid on;

subplot(2,1,2)
plot(t,abs(y));
grid on;

