clc 
clear all

fs = 1000; 
fc = 200;  
t = (0:1/fs:0.2)';

x = sin(2*pi*50*t)+2*sin(2*pi*100*t);
x_c = sin(2*pi*fc*t);

figure(1);
plot(t,x,t,x_c);
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Carrier Signal');
grid on;

fDev1 = 50;

y1 = fmmod(x,fc,fs,fDev1);


figure(2);
plot(t,x,'c',t,y1,'b--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Modulated Signal')
grid on
