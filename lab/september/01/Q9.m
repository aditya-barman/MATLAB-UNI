clc, clearvars, close all

% Define the function
f = @(x) x.^2 - 4*sin(2*x) - 1;

% Define the x-values within the specified range
x = linspace(-3, 3, 1000); % You can adjust the number of points (e.g., 1000) for smoother plotting

% Evaluate the function for the x-values
y = f(x);

% Plot the function using fplot
fplot(f, [-3, 3])
title('Plot of f(x) = x^2 - 4*sin(2x) - 1')
xlabel('x')
ylabel('f(x)')
grid on
