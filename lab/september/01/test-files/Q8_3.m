clc, clearvars, close all

% Define the range of x values
x = linspace(-2, 4, 1000);

% Define the function y = 3*x^3 - 26*x + 10
y = 3 * x.^3 - 26 * x + 10;

% Calculate the first derivative dy/dx
dydx = 9 * x.^2 - 26;

% Calculate the second derivative d^2y/dx^2
d2ydx2 = 18 * x;

% Create a figure
figure;

% Plot the function
plot(x, y, 'b', 'LineWidth', 2); % Blue line for the function
hold on;

% Plot the first derivative
plot(x, dydx, 'r--', 'LineWidth', 2); % Red dashed line for the first derivative

% Plot the second derivative
plot(x, d2ydx2, 'g-.', 'LineWidth', 2); % Green dash-dot line for the second derivative

% Add labels and legend
xlabel('x');
ylabel('y and derivatives');
title('Function and Its Derivatives');
legend('y = 3x^3 - 26x + 10', 'dy/dx', 'd^2y/dx^2');

% Grid lines for better readability
grid on;

% Set axis limits
xlim([-2, 4]);

% Display the graph
hold off;
