clc 
clear all
m = 0.6;
fs = 12000; 
fc = 5000;  
t = (0:1/fs:0.01)';

s = 15*sin(2*pi*1000*t)+15*sin(2*pi*2000*t);
c = (5/m)*sin(2*pi*fc*t);

figure(1);
plot(t,s,t,c);
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Carrier Signal');
grid on;

w = -(length(s)-1)/2:(length(s) - 1)/2;
%w = -60:60 * 1000;
s_f = fftshift(fft(s));
 
 figure(2);
 plot(w*100, abs(s_f));
 xlabel('Frequency (w)')
 ylabel('Amplitude')
 grid on;


%%
y = ammod(s,fc,fs);


figure(3);
plot(t,s,'c',t,y,'b--')
xlabel('Time (s)')
ylabel('Amplitude')
grid on

y_f = fftshift(fft(y));
 
figure(4);
plot(w*100, abs(y_f));
xlabel('Frequency (w)')
ylabel('Amplitude')
grid on;
 
%Demodulation
z = amdemod(y,fc,fs);

figure(5);
plot(t,s,'c',t,z,'b--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','DeModulated Signal')
grid on

z_f = fftshift(fft(z));
 
figure(6);
plot(w*100, abs(z_f));
xlabel('Frequency (w)')
ylabel('Amplitude')
grid on;
