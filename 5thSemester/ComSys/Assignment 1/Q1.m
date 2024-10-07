% Parameters
T = 2;            % Time duration
Fs = 1000;        % Sampling frequency
t = -T/2:1/Fs:T/2; % Time vector
f = -Fs/2:1/T:Fs/2; % Frequency vector

% Sinc function
x = sin(t)/t;

% Fourier transform
X = fftshift(fft(x));

% Plotting the sinc function and its Fourier transform
subplot(2,1,1);
plot(t, x);
title('Sinc Function');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2,1,2);
plot(f, abs(X));
title('Fourier Transform of Sinc Function');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
