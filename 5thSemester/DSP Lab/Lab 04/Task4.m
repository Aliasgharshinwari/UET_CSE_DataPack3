t=0:0.001:1;
f1=80;
f2=100;
f= 10;

y1 = 0.5 * sin(2*pi*f1*t);
y2 = 0.7 * sin(2*pi*f2*t);
y = y1 + y2;

for i = 1:6    
    x = x + sin(2*pi*f*i*t) ;
end

figure(1)
subplot(2,2,1)
plot(t,y);
title('Noise');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(2,2,3)
plot(t,x);
title('Noise + Wanted Signal in Time Domain');
xlabel('Time');
ylabel('Amplitude');
grid on;

w=-(length(y)-1)/2:(length(y) -1)/2;
y_f = fft(y);
y_fshift = fftshift(y_f);

x_f = fft(x);
x_fshift = fftshift(x_f);

subplot(2,2,2)
plot(w,abs(y_fshift))
title('Spectrum of Noise Signal');
xlabel('Frequency');
ylabel('Amplitude');
grid on;


subplot(2,2,4)
plot(w,abs(x_fshift))
title('Spectrum of Signal + Noise');
xlabel('Frequency');
ylabel('Amplitude');
grid on;