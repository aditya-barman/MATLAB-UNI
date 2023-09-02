clc, clearvars, close all

% Define the range of x values
x = linspace(-2, 4, 1000);

% Define the function
y = 3*x.^3 - 26*x + 10;

% Calculate the first derivative using the symbolic toolbox
syms xs;
dy_dx = diff(3*xs^3 - 26*xs + 10, xs);
dy_dx = double(subs(dy_dx, xs, x));  % Evaluate the derivative for the given x values

% Calculate the second derivative using the symbolic toolbox
d2y_dx2 = diff(dy_dx, xs);
d2y_dx2 = double(subs(d2y_dx2, xs, x));  % Evaluate the second derivative for the given x values

% Create the plot
figure;
hold on;

% Plot the original function
plot(x, y, 'b', 'LineWidth', 2, 'DisplayName', 'y = 3x^3 - 26x + 10');

% Plot the first derivative
plot(x, dy_dx, 'g', 'LineWidth', 2, 'DisplayName', 'First Derivative');

% Plot the second derivative
plot(x, d2y_dx2, 'r', 'LineWidth', 2, 'DisplayName', 'Second Derivative');

% Set axis labels and legend
xlabel('x');
ylabel('y');
legend('Location', 'northwest');
title('Function and Its Derivatives');

% Hold off to end the plot
hold off;
