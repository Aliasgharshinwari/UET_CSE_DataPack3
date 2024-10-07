clear all
close all
clc

% sine wave
signal_length = 1000;
t = linspace(-10, 10, signal_length);
f = 0.3;
A = 5;
y = A * sin(2 * pi * f * t);

plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave');

% three different noisy signals
signal_length = 1000;

mean1 = 2;
std1 = 1.5;
noisy_signal1 = mean1 + std1 * randn(1, signal_length);

mean2 = 1;
std2 = 2;
noisy_signal2 = mean2 + std2 * randn(1, signal_length);

mean3 = -1;
std3 = 0.5;
noisy_signal3 = mean3 + std3 * randn(1, signal_length);

figure;
subplot(2, 3, 1);
plot(noisy_signal1);
title(sprintf('Noisy Signal 1 (Mean: %.2f, Std: %.2f)', mean1, std1));
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2, 3, 2);
plot(noisy_signal2);
title(sprintf('Noisy Signal 2 (Mean: %.2f, Std: %.2f)', mean2, std2));
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2, 3, 3);
plot(noisy_signal3);
title(sprintf('Noisy Signal 3 (Mean: %.2f, Std: %.2f)', mean3, std3));
xlabel('Time (s)');
ylabel('Amplitude');

% Adding noise to the sine wave 
subplot(2, 3, 4);
added_signal1 = y + noisy_signal1;
plot(t, added_signal1);
title(sprintf('Sine Wave with Noisy Signal 1'));
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2, 3, 5);
added_signal2 = y + noisy_signal2;
plot(t, added_signal2);
title(sprintf('Sine Wave with Noisy Signal 2'));
xlabel('Time (s)');
ylabel('Amplitude');

subplot(2, 3, 6);
added_signal3 = y + noisy_signal3;
plot(t, added_signal3);
title(sprintf('Sine Wave with Noisy Signal 2'));
xlabel('Time (s)');
ylabel('Amplitude');


% Smoothing the noisy signals with different window sizes

smoothed_signal1a = movmean(added_signal1, 3);
figure;
plot(t, smoothed_signal1a);
title(sprintf('Smoothed Signal 1a (Window Size: %d)', 3));
xlabel('Time (s)');
ylabel('Amplitude');

smoothed_signal1b = movmean(added_signal1, 5);
figure;
plot(t, smoothed_signal1b);
title(sprintf('Smoothed Signal 1b (Window Size: %d)', 5));
xlabel('Time (s)');
ylabel('Amplitude');

smoothed_signal1c = movmean(added_signal1, 7);
figure;
plot(t, smoothed_signal1c);
title(sprintf('Smoothed Signal 1c (Window Size: %d)', 7));
xlabel('Time (s)');
ylabel('Amplitude');


smoothed_signal2a = movmean(added_signal2, 3);
figure;
plot(t, smoothed_signal2a);
title(sprintf('Smoothed Signal 2a (Window Size: %d)', 3));
xlabel('Time (s)');
ylabel('Amplitude');

smoothed_signal2b = movmean(added_signal2, 5);
figure;
plot(t, smoothed_signal2b);
title(sprintf('Smoothed Signal 2b (Window Size: %d)', 5));
xlabel('Time (s)');
ylabel('Amplitude');

smoothed_signal2c = movmean(added_signal2, 7);
figure;
plot(t, smoothed_signal2c);
title(sprintf('Smoothed Signal 2c (Window Size: %d)', 7));
xlabel('Time (s)');
ylabel('Amplitude');

smoothed_signal3a = movmean(added_signal3, 3);
figure;
plot(t, smoothed_signal3a);
title(sprintf('Smoothed Signal 3a (Window Size: %d)', 3));
xlabel('Time (s)');
ylabel('Amplitude');

smoothed_signal3b = movmean(added_signal3, 5);
figure;
plot(t, smoothed_signal3b);
title(sprintf('Smoothed Signal 3b (Window Size: %d)', 5));
xlabel('Time (s)');
ylabel('Amplitude');

smoothed_signal3c = movmean(added_signal3, 7);
figure;
plot(t, smoothed_signal3c);
title(sprintf('Smoothed Signal 3c (Window Size: %d)', 7));
xlabel('Time (s)');
ylabel('Amplitude');