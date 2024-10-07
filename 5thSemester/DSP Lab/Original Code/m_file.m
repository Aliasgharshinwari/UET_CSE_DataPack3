% Load Audio Files
[V1, Fs1] = audioread('V1.mp3');
[V2, Fs2] = audioread('V2.mp3');
[V3, Fs3] = audioread('V3.mp3');

passBand = 300;

V1 = V1(:, 1);
V2 = V2(:, 1);
V3 = V3(:, 1);

fprintf('\n\nsize of Voice 1 is %s\n', mat2str(size(V1)));
fprintf('size of Voice 2 is %s\n', mat2str(size(V2)));
fprintf('size of Voice 3 is %s\n', mat2str(size(V3)));
 
% Play them
sound(V1, Fs1);
pause(1);
 
sound(V3, Fs3);
pause(1);
 
sound(V2, Fs2);
pause(4);
 
% Plot the spectra of the signals as they arrive
V1Spec = fft(V1);
n1 = length(V1);
ts1 = 1 / Fs1;
f1 = (-n1/2:n1/2-1)*(ts1/n1);
fshift1 = fftshift(V1Spec); 
subplot(6,1,1)
plot(f1, abs(fshift1));
xlabel('Frequency (KHz)')
ylabel('Magnitude')
title('Spectrum of V1');
 
V3Spec = fft(V3);
n2 = length(V3);
ts2 = 1 / Fs3;
f2 = (-n2/2:n2/2-1)*(ts2/n2);
fshift2 = fftshift(V3Spec); 
subplot(6,1,2)
plot(f2, abs(fshift2));
xlabel('Frequency (KHz)')
ylabel('Magnitude')
title('Spectrum of V3');
 
V2Spec = fft(V2);
n3 = length(V2);
ts3 = 1 / Fs2;
f3 = (-n3/2:n3/2-1)*(ts3/n3);
fshift3 = fftshift(V2Spec); 
subplot(6,1,3)
plot(f3, abs(fshift3));
xlabel('Frequency (KHz)')
ylabel('Magnitude')
title('Spectrum of V2');

% Spectrum Analyzer V1
hsa1 = dsp.SpectrumAnalyzer('SampleRate', Fs1);
step(hsa1, V1);

% Spectrum Analyzer 
hsa2 = dsp.SpectrumAnalyzer('SampleRate', Fs2);
step(hsa2, V2);

% Spectrum Analyzer V2
hsa3 = dsp.SpectrumAnalyzer('SampleRate', Fs3);
step(hsa3, V3);

fc = 300; % Cut off frequency
fs = 8000; % Sampling rate
[b,a] = butter(10,fc/(fs/2));

% The signals are passed through a low pass filter and plotted
LPF_H = filter(b, a, V1);
LPF_S = filter(b, a, V2);
LPF_s = filter(b, a, V3);
 
% Plot the spectra of the signals as they arrive
V1Spec = fft(LPF_H);
n1 = length(LPF_H);
ts1 = 1 / Fs1;
f1 = (-n1/2:n1/2-1)*(ts1/n1);
fshift1 = fftshift(V1Spec); 
subplot(6,1,4)
plot(f1, abs(fshift1));
xlabel('Frequency (KHz)')
ylabel('Magnitude')
title('Spectrum of V1 after LPF');
 
V3Spec = fft(LPF_s);
n2 = length(LPF_s);
ts2 = 1 / Fs3;
f2 = (-n2/2:n2/2-1)*(ts2/n2);
fshift2 = fftshift(V3Spec); 
subplot(6,1,5)
plot(f2, abs(fshift2));
xlabel('Frequency (KHz)')
ylabel('Magnitude')
title('Spectrum of V3 after LPF');
 
V2Spec = fft(LPF_S);
n3 = length(LPF_S);
ts3 = 1 / Fs2;
f3 = (-n3/2:n3/2-1)*(ts3/n3);
fshift3 = fftshift(V2Spec); 
subplot(6,1,6)
plot(f3, abs(fshift3));
xlabel('Frequency (KHz)')
ylabel('Magnitude')
title('Spectrum of V2 after LPF');
 
% Reproduce the signals after LPF
sound(LPF_H, Fs1);
pause(3.5);
 
sound(LPF_s, Fs3);
pause(3);
 
sound(LPF_S, Fs2);
pause(4);

% The signals are modulated to different carriers
CF1 = 12000;      % 12KHz
CF2 = 16000;      % 16KHz
CF3 = 20000;      % 20KHz
FMOD1 = fmmod(LPF_H, CF1, Fs1, passBand);  
FMOD2 = fmmod(LPF_S, CF2, Fs2, passBand); 
FMOD3 = fmmod(LPF_s, CF3, Fs3, passBand);  

% The modulated signals are filtered in the given band and added together
%BP1 = bandpass(FMOD1,[8600 11700], Fs1);      % 8.6-11.7 KHz
%BP2 = bandpass(FMOD2,[12600 15700], Fs2);        % 12.6-15.7 KHz
%BP3 = bandpass(FMOD3,[16600 19700], Fs3);        % 16.6-19.7 KHz

multiplexer = FMOD1 + FMOD2 + FMOD3;
 
% Some noise is added to the transmitted signal.
Noise = awgn(multiplexer, 10);
 
% Upon arrival each band is filtered.
SIG1 = FMOD3 + FMOD2;
demux_signal1 = multiplexer - SIG1;
SIG2 = FMOD3 + FMOD1;
demux_signal2 = multiplexer - SIG2; 
SIG3 = FMOD1 + FMOD2;
demux_signal3 = multiplexer - SIG3;

% Each recovered band is demodulated to return the signal to the baseband frequency.
DMOD1 = demod(demux_signal1, CF1, Fs1);
DMOD2 = demod(demux_signal2, CF2, Fs2);
DMOD3 = demod(demux_signal3, CF3, Fs3);

[b,a] = butter(10,fc/(fs/2));

% The recovered signal is passed through a low pass filter.
receivedV1 = filter(b,a,DMOD1);
receivedV2 = filter(b,a,DMOD2);
receivedV3 = filter(b,a,DMOD3);
 
fprintf('After Demodulation');
% Play the reproduced signal after transmission.
sound(receivedV1, Fs1);
pause(3.5);
 
sound(receivedV3, Fs3);
pause(3);
 
sound(receivedV2, Fs2);
pause(4);
