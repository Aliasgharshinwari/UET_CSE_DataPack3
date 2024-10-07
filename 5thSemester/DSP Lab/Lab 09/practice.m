t = -2*pi:0.01:2*pi;
x = sinc(pi*t);
x_f = fftshift(fft(x));

subplot(2,1,1)
plot(t,x);


subplot(2,1,2)
plot(t,x_f);