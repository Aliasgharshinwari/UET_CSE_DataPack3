hsin = dsp.SineWave('Frequency',100,'SampleRate',1000);
hsin.SamplesPerFrame = 1000;
hsa = dsp.SpectrumAnalyzer('SampleRate',hsin.SampleRate);
for ii = 1:250
  x = step(hsin);
  step(hsa, x);
end