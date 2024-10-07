% Create an audio recorder object
recorder = audiorecorder;

% Prompt the user
disp('Please say something. Press any key to start recording.');
pause; % Wait for user to press any key

% Start recording
disp('Recording...');
recordblocking(recorder, 5); % Record for 5 seconds

% Stop recording
disp('Recording ended.');

% Get the audio data
audioData = getaudiodata(recorder);

% Save the audio data as a .wav file
audiowrite('recording.wav', audioData, recorder.SampleRate);

% Read the audio file
[audioData, sampleRate] = audioread('recording.wav');

% Design a low-pass filter
cutoffFrequency = 1000; % Set the cutoff frequency to 1000 Hz
[b, a] = butter(6, cutoffFrequency/(sampleRate/2), 'low'); % 6th order Butterworth low-pass filter

% Apply the low-pass filter to the audio data
filteredAudioData = filter(b, a, audioData);

% Calculate the time vector
totalTime = length(filteredAudioData) / sampleRate;
timeVector = linspace(0, totalTime, length(filteredAudioData));

% Plot the filtered audio data in the time domain
figure;
subplot(2, 1, 1);
plot(timeVector, filteredAudioData);
title('Time Domain (Filtered)');
xlabel('Time (s)');
ylabel('Amplitude');

% Calculate the frequency vector
n = length(filteredAudioData);
f = (0:n-1)*(sampleRate/n);

% Calculate the Fourier Transform of the filtered audio data
fftFilteredAudioData = abs(fft(filteredAudioData));

% Plot the filtered audio data in the frequency domain
subplot(2, 1, 2);
plot(f, fftFilteredAudioData);
title('Frequency Domain (Filtered)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
