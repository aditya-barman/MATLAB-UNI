clc, clearvars, close all

%{
    Plot the function
                        y = (3*(x^3)) - (26*x) + 10
    & its first and second derivatives for -2 <= x <= 4, all in the same plot.
    Also plot the same function using hold on & hold off
%}

% Define the range of x values
x = linspace(-2, 4, 1000);

% Define the function
y = 3*x.^3 - 26*x + 10;

% Calculate the first derivative
dy_dx = gradient(y, x);

% Calculate the second derivative
d2y_dx2 = gradient(dy_dx, x);

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
