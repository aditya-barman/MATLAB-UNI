clc, clearvars, close all

% Define the function
f = @(x) (x.^2 - 5.*x + 10)./(x.^2 - 2.*x - 3);

% Define the domain
x1 = linspace(-10, -3.1, 1000);
x2 = linspace(-2.9, 1.9, 1000);
x3 = linspace(2.1, 10, 1000);

% Plot the function
figure
plot(x1, f(x1), 'b', x2, f(x2), 'b', x3, f(x3), 'b')
ylim([-20 20])
title('Plot of the function')
xlabel('x')
ylabel('f(x)')
grid on
