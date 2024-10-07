fs = 100;
n = 0:1/fs:10;
A = 7;
%x1 = A * sin(n); %Aperiodic
x1 =  A *sin((21/5)*pi*n) + cos((31/7)*n); %periodic


figure;
% Plot the clean sine wave
subplot(2,1,1);
plot(n, x1);

%subplot(2,1,2);
%stem(n, x2);
