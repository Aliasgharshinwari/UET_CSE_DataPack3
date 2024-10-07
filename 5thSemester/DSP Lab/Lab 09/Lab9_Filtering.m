load('Data.mat');

fc = 300; % Cut off frequency
fs = 8000; % Sampling rate
[b,a] = butter(10,fc/(fs/2));

Y1_LPF = filter(b, a, Y1);
Y2_LPF= filter(b, a, Y2);
Y3_LPF = filter(b, a, Y3);

%%
figure(1);
Y1_w_LPF = fftshift(fft(Y1_LPF));
w1_LPF = -length(Y1_w_LPF)/2 : (length(Y1_w_LPF) - 1)/2;

% Convert the magnitude of Y_w to dBm
Y1_w_dbm_LPF = mag2db(abs(Y1_w_LPF));

subplot(2,1,1);
plot(w1_LPF, abs(Y1_w_LPF));

subplot(2,1,2);
plot(w1_LPF, Y1_w_dbm_LPF);

hsa1 = dsp.SpectrumAnalyzer('SampleRate',Fs1);
step(hsa1, Y1_LPF);
%%
 figure(2);
 
 Y2_w_LPF = fftshift(fft(Y2_LPF));
 w2_LPF = -length(Y2_w_LPF)/2 : (length(Y2_w_LPF) - 1)/2;
 
 % Convert the magnitude of Y_w to dBm
 Y2_w_dbm_LPF = mag2db(abs(Y2_w_LPF));
 
 subplot(2,1,1);
 plot(w2_LPF, abs(Y2_w_LPF));
 
 subplot(2,1,2);
 plot(w2_LPF, Y2_w_dbm_LPF);
 
hsa2 = dsp.SpectrumAnalyzer('SampleRate',Fs2);
step(hsa2, Y2_LPF);
 
 %%
 figure(3);
 
 Y3_w_LPF = fftshift(fft(Y3_LPF));
 w3_LPF = -length(Y3_w_LPF)/2 : (length(Y3_w_LPF) - 1)/2;
 
 % Convert the magnitude of Y_w to dBm
 Y3_w_dbm_LPF = mag2db(abs(Y3_w_LPF));
 
 subplot(2,1,1);
 plot(w3_LPF, abs(Y3_w_LPF));
 
 subplot(2,1,2);
 plot(w3_LPF, Y3_w_dbm_LPF);
 
hsa3 = dsp.SpectrumAnalyzer('SampleRate',Fs3);
step(hsa3, Y3);

%%
sound(Y1_LPF, Fs1);
pause(5);
sound(Y1, Fs1);

pause(6);

sound(Y2_LPF, Fs2);
pause(5);
sound(Y2, Fs2);

pause(6);

sound(Y3_LPF, Fs3);
pause(5);
sound(Y3, Fs3);

save('Data.mat');
