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
