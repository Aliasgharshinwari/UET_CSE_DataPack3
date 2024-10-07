clc 
clear all
m =0.5;
fs = 80000; 
fc = 10000;  
t = (0:1/fs:0.01)';

s = 10*sin(2*pi*300*t)+10*sin(2*pi*600*t);
c = (10/m)*sin(2*pi*fc*t);

c_f = fftshift(fft(c));

s_f = fftshift(fft(s));

w = (-(length(s_f)-1)/2:(length(s_f) - 1)/2)';

y = ammod(s,fc,fs);
y_f = fftshift(fft(y));

z = amdemod(y,fc,fs);
z_f = fftshift(fft(z));

% Original Signal in Time Domain
figure(1);
subplot(2,1,1)
plot(t,s);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal in Time Domain');
grid on;

% Carrier Signal in Time Domain
subplot(2,1,2)
plot(t,c);
xlabel('Time (s)');
ylabel('Amplitude');
title('Carrier Signal in Time Domain');
grid on;


% Original Signal in Frequency Domain
figure(2);
subplot(2,1,1)
plot(w*100, abs(s_f));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Original Signal in Frequency Domain');
grid on;


% Carrier Signal in Frequency Domain
subplot(2,1,2)
plot(w * 100, abs(c_f));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Carrier Signal in Frequency Domain');
grid on;

% Modulated Signal in Time Domain
figure(3);
subplot(2,1,1)
plot(t,y,'b--');
xlabel('Time (s)');
ylabel('Amplitude');
title('Modulated Signal in Time Domain');
grid on;

% Modulated Signal in Frequency Domain
subplot(2,1,2)
plot(w*100, abs(y_f));
xlabel('Frequency (f)');
ylabel('Magnitude');
title('Modulated Signal in Frequency Domain');
grid on;

% Demodulated Signal in Time Domain
figure(4);
subplot(2,1,1)
plot(t,z,'b--');
xlabel('Time (s)');
ylabel('Amplitude');
title('Demodulated Signal in Time Domain');
grid on;

% Demodulated Signal in Frequency Domain
subplot(2,1,2)
plot(w*100, abs(z_f));
xlabel('Frequency (f)');
ylabel('Magnitude');
title('Demodulated Signal in Frequency Domain');
grid on;
