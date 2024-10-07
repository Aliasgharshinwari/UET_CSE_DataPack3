% Complex Exponential Sequences
n = -10:10;  % Define the range of 'n'
A = 2;        % Amplitude

% Case 1: alpha = -0.5
alpha1 = -0.5;
omega = 0.1;  % Choose an arbitrary value for the frequency (?0)
phi = pi/4;   % Choose an arbitrary phase angle (?)
x1 = A * exp(1i * (omega * n + phi));

% Case 2: alpha = 0.7
alpha2 = 0.7;
x2 = A * exp(1i * (omega * n + phi));

% Case 3: alpha = 1.1
alpha3 = 1.1;
x3 = A * exp(1i * (omega * n + phi));

% Plotting
figure;
subplot(3, 1, 1);
stem(n, real(x1));
title('Complex Exponential (alpha = -0.5)');
xlabel('n');
ylabel('Real part of x[n]');

subplot(3, 1, 2);
stem(n, real(x2));
title('Complex Exponential (alpha = 0.7)');
xlabel('n');
ylabel('Real part of x[n]');

subplot(3, 1, 3);
stem(n, real(x3));
title('Complex Exponential (alpha = 1.1)');
xlabel('n');
ylabel('Real part of x[n]');
