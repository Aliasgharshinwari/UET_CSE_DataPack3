t=0:0.001:1;
f=10;
figure(1);
y = (t >= 0).* sin(2*pi*f*t);

subplot(3,1,1);
plot(t,y)
title_str =  num2str(10);
title(title_str);
xlabel('Time');
ylabel('Amplitude');
grid on;

w=-500:500;

x_f = fft(y, length(y));
%n = length(x_f);
%fshift(-n/2:n/2-1)*(1000*n);
subplot(3,1,2);
plot(abs(x_f))
title_str =  num2str(10);
title(title_str);
xlabel('Frequency');
ylabel('Amplitude');
grid on;

x_fshift = fftshift(x_f);

subplot(3,1,3);
plot(w,abs(x_fshift))
title_str =  num2str(10);
title(title_str);
xlabel('Frequency');
ylabel('Amplitude');
grid on;
