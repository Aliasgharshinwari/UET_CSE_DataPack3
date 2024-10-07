% Set the sample rate and frequency
fs = 1000; 
f = 1000; 
t = 0:1/fs:0.01;

% Generate a sawtooth wave
x = sawtooth(2*pi*f*t);
% Set the frequency deviation
fDev = 10^3;

% Frequency modulate x
y = fmmod(x, fc, fs, fDev);

% Plot the original and modulated signals
figure;
subplot(2,1,1);
plot(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original signal');
grid on;

subplot(2,1,2);
plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
legend('FM modulated signal');
grid on;