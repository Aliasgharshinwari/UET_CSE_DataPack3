clc 
clear all

fs = 1000; 
fc = 200;  
t = (0:1/fs:0.2)';

x = sin(2*pi*30*t)+2*sin(2*pi*60*t);
x_c = sin(2*pi*fc*t);

figure(1);
plot(t,x,t,x_c);
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Carrier Signal');
grid on;

y = ammod(x,fc,fs);

figure(2);
plot(t,x,'c',t,y,'b--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Modulated Signal')
grid on

%Demodulation
z = amdemod(y,fc,fs);

figure(3);
plot(t,x,'c',t,z,'b--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Modulated Signal')
grid on

