clc, clearvars

% Define the symbolic variable x
syms x

% Define the function
y = 3*x^3 - 26*x + 10;

% Calculate the first derivative
dydx = diff(y, x);

% Calculate the second derivative
d2ydx2 = diff(dydx, x);

% Create a range of x values
x_values = linspace(-2, 4, 100);

% Evaluate the function and its derivatives at the x values
y_values = double(subs(y, x, x_values));
dydx_values = double(subs(dydx, x, x_values));
d2ydx2_values = double(subs(d2ydx2, x, x_values));

% Create the plot
figure;
hold on;

plot(x_values, y_values, 'b', 'LineWidth', 2, 'DisplayName', 'y = 3x^3 - 26x + 10');
plot(x_values, dydx_values, 'g', 'LineWidth', 2, 'DisplayName', "y' (First Derivative)");
plot(x_values, d2ydx2_values, 'r', 'LineWidth', 2, 'DisplayName', "y'' (Second Derivative)");

xlabel('x');
ylabel('y');
title('Function and Its Derivatives');
legend('Location', 'Best');

grid on;
hold off;
