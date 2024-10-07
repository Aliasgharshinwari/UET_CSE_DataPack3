fs = 1000;
t=0:1/fs:1/4;
f1=50;
f2=120;

figure(1);
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);
%x = sin(2*pi*50*t);
subplot(3,1,1);
plot(t,x)
title('Signal of 50Hz and 120Hz frequency');
xlabel('Time(ms)');
ylabel('Amplitude');

y = x + 2*randn(size(t));

subplot(3,1,2);
plot(y);
xlim([0 50]);

w=-(length(x)-1)/2:(length(x) -1)/2;
y_f = fft(y, length(y));
y_fshift = fftshift(y_f);
subplot(3,1,3);
plot(4*w,abs(y_fshift))
title('Frequency Response of Signal of 50Hz and 120Hz frequency + Noise');
xlabel('Frequency');
ylabel('Amplitude');
grid on;


%Pyy = (y_f.* conj(y_f))/251;
Pyy = (y_f.* conj(y_f))/length(y_f);
%plot(w,10*log10(Pyy))
f = 1000/251*(0:127);

figure(2);
%plot(10*log10(Pyy))
plot(f(1:128), Pyy(1:128));
title('Power Spectral Density');
xlabel('Frequency');
ylabel('Amplitude');
grid on;

%[Pyy2,w2] = periodogram(y,0:5,length(y),1000)
%figure;
%plot(w,10*log10(Pyy2))

%figure(3);
%plot(10*log10(Pyy))
%plot(w2, Pyy2);
%title('Power Spectral Density(Periodogram)');
%xlabel('Frequency');
%ylabel('Amplitude');
%grid on;


