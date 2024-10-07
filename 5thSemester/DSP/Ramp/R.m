% Time vector
t = -5:0.01:5;

% Evaluate y(t) for the given time vector
y = y_function(t);

% Plot the result
plot(t, y);
title('y(t) = r(t+2) - r(t+1) - r(t-1) + r(t-2)');
xlabel('Time (t)');
ylabel('y(t)');
grid on;
