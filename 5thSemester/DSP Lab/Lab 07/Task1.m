clc; 
clear all;

fs = 1000; % Sampling frequency
fc = 200;  % Carrier frequency
t = (0:1/fs:0.2)'; % Time vector

x = sin(2*pi*30*t) + 2*sin(2*pi*60*t); % Original signal (sum of two sine waves)
x_c = sin(2*pi*fc*t); % Carrier signal


% Plotting the original and carrier signals
figure(1);
plot(t, x, t, x_c);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original Signal', 'Carrier Signal');
grid on;

%%
% Frequency deviation for FM modulation
fDev1 = 50;
fDev2 = 100;

% FM modulation with different frequency deviations
y1 = fmmod(x, fc, fs, fDev1);
y2 = fmmod(x, fc, fs, fDev2);

% Plotting the original signal and modulated signal with fDev1
figure(2);
plot(t, x, 'c', t, y1, 'b--');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original Signal', 'Modulated Signal (fDev = 50 Hz)');
grid on;

% Plotting the original signal and modulated signal with fDev2
figure(3);
plot(t, x, 'c', t, y2, 'b--');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original Signal', 'Modulated Signal (fDev = 100 Hz)');
grid on;
%%
% FM demodulation
z1 = fmdemod(y1, fc, fs, fDev1);
z2 = fmdemod(y2, fc, fs, fDev2);

% Plotting the original signal and demodulated signal with fDev1
figure(4);
plot(t, x, 'c', t, z1, 'b--');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original Signal', 'Demodulated Signal (fDev = 50 Hz)');
grid on;

% Plotting the original signal and demodulated signal with fDev2
figure(5);
plot(t, x, 'c', t, z2, 'b--');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original Signal', 'Demodulated Signal (fDev = 100 Hz)');
grid on;
