clc
clear all

fs = 1000;
t = 0:1/fs:1;

meanNoise1 = 10;
std_dev_noise1 = 5;

noise1 = meanNoise1 + std_dev_noise1 * randn(size(t));

%subplot(2,1,1)
plot(t,noise1);
title('Noise');