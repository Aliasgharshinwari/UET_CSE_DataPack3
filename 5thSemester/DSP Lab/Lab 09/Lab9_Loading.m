%%
[Y1, Fs1] = audioread('recording1(Male).mpeg');
[Y2, Fs2] = audioread('recording2(Female).mpeg');
[Y3, Fs3] = audioread('recording3(Male).mpeg');

t1 = length(Y1)/Fs1;
%%
figure(1);
subplot(3,1,1);
plot(Y1);

Y1_w = fftshift(fft(Y1));
w1 = -length(Y1_w)/2 : (length(Y1_w) - 1)/2;

% Convert the magnitude of Y_w to dBm
Y1_w_dbm = mag2db(abs(Y1_w)) - 30;

subplot(3,1,2);
plot(w1, abs(Y1_w));

subplot(3,1,3);
plot(w1, Y1_w_dbm);

hsa1 = dsp.SpectrumAnalyzer('SampleRate',Fs1);
step(hsa1, Y1);
%%
figure(2);
subplot(3,1,1);
plot(Y2);

Y2_w = fftshift(fft(Y2));
w2 = -length(Y2_w)/2 : (length(Y2_w) - 1)/2;

% Convert the magnitude of Y_w to dBm
Y2_w_dbm = mag2db(abs(Y2_w)) - 30;

subplot(3,1,2);
plot(w2, abs(Y2_w));

subplot(3,1,3);
plot(w2, Y2_w_dbm);

hsa2 = dsp.SpectrumAnalyzer('SampleRate',Fs2);
step(hsa2, Y2);

%%
figure(3);
subplot(3,1,1);
plot(Y3);

Y3_w = fftshift(fft(Y3));
w3 = -length(Y3_w)/2 : (length(Y3_w) - 1)/2;

% Convert the magnitude of Y_w to dBm
Y3_w_dbm = mag2db(abs(Y3_w)) - 30;

subplot(3,1,2);
plot(w3, abs(Y3_w));

subplot(3,1,3);
plot(w3, Y3_w_dbm);

hsa3 = dsp.SpectrumAnalyzer('SampleRate',Fs3);
step(hsa3, Y3);

save('Data.mat');
