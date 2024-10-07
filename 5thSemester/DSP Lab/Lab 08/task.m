clc 
clear all
m =1;
fs = 80; 
fc = 10000;  
t = (0:1/fs:0.01)';

s = 10*sin(2*pi*300*t)+2*sin(2*pi*600*t);
c = (10/m)*sin(2*pi*fc*t);

figure(1);
plot(t,s,t,c);
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Carrier Signal');
grid on;

s_f = fftshift(fft(s));

w = (-(length(s_f)-1)/2:-(length(s_f) - 1)/2)';

plot(abs(s_f));
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Carrier Signal');
grid on;

%%
y = ammod(s,fc,fs);

plot(t,s,'c',t,y,'b--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Modulated Signal')
grid on

%Demodulation
z = amdemod(y,fc,fs);

plot(t,s,'c',t,z,'b--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Modulated Signal')
grid on

