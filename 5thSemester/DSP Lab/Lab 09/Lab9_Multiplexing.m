load('Data.mat');

Fc1 = 12000;     
Fc2 = 16000;      
Fc3 = 20000;      

Y1_Mod = ammod(Y1_LPF, Fc1, 2*Fs1);  
Y2_Mod = ammod(Y2_LPF, Fc2, 2*Fs2); 
Y3_Mod = ammod(Y3_LPF, Fc3, 2*Fs3); 

Y_Mux = Y1_Mod + Y2_Mod + Y3_Mod;

Noise = awgn(Y_Mux, 10);

S1 = Y3_Mod + Y2_Mod;
demux_s1 = Y_Mux - S1;

S2 = Y3_Mod + Y1_Mod;
demux_s2 = Y_Mux - S2; 

S3 = Y1_Mod + Y2_Mod;
demux_s3 = Y_Mux - S3;

%%
figure(1);
Y_Mux_w = fftshift(fft(Y_Mux));
w_Y_Mux = -length(Y_Mux_w)/2 : (length(Y_Mux_w) - 1)/2;

% Convert the magnitude of Y_w to dBm
Y_Mux_w_dbm_LPF = mag2db(abs(Y_Mux_w)) - 30;

subplot(2,1,1);
plot(w_Y_Mux, abs(Y_Mux_w));

subplot(2,1,2);
plot(w_Y_Mux, Y_Mux_w_dbm_LPF);

%hsa1 = dsp.SpectrumAnalyzer('SampleRate',Fs1+Fs2+Fs3);
%step(hsa1, Y_Mux_w);


%%
% Demodulate the signals
Y1_Demod = amdemod(demux_s1, Fc1, 3*Fs1);
Y2_Demod = amdemod(demux_s2, Fc2, 3*Fs2);
Y3_Demod = amdemod(demux_s3, Fc3, 3*Fs3);

% Compute FFT of the demodulated signals
Y1_Demod_fft = fftshift(fft(Y1_Demod));
Y2_Demod_fft = fftshift(fft(Y2_Demod));
Y3_Demod_fft = fftshift(fft(Y3_Demod));

% Compute the frequency axis
f = (-Fs1/2 : Fs1/length(Y1_Demod) : Fs1/2 - Fs1/length(Y1_Demod));

% Plot the magnitude of the FFT of the demodulated signals
figure(3);
subplot(3,1,1);
plot(f, abs(Y1_Demod_fft));
title('Frequency Spectrum of Demodulated Signal Y1');

subplot(3,1,2);
plot(f, abs(Y2_Demod_fft));
title('Frequency Spectrum of Demodulated Signal Y2');

subplot(3,1,3);
plot(f, abs(Y3_Demod_fft));
title('Frequency Spectrum of Demodulated Signal Y3');

% Design a low-pass filter
%lpf = designfilt('lowpassfir', 'PassbandFrequency', 0.45, 'StopbandFrequency', 0.55, 'PassbandRipple', 1, 'StopbandAttenuation', 60, 'DesignMethod', 'kaiserwin');

[b,a] = butter(10,fc/(fs/2)); % Butterworth filter of order 6

% Apply the low-pass filter to the demodulated signals
Y1_Demod_filtered = filter(b, a, Y1_Demod);
Y2_Demod_filtered = filter(b, a, Y2_Demod);
Y3_Demod_filtered = filter(b, a, Y3_Demod);

%%
% Play the filtered signals
sound(Y1_Demod_filtered, Fs1);
pause(6);

sound(Y2_Demod_filtered, Fs2);
pause(6);

sound(Y3_Demod_filtered, Fs3);

