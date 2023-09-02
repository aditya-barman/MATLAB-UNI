clc, clearvars
% Define the range of x values
x = linspace(-2, 4, 1000); % Adjust the number of points for smoother curves

% Calculate the function values
y = 3*x.^3 - 26*x + 10;

% Calculate the first derivative
dydx = 9*x.^2 - 26;

% Calculate the second derivative
d2ydx2 = 18*x;

% Create a figure
figure;

% Plot the function
subplot(3,1,1); % Create 3 subplots in a single column
plot(x, y, 'b', 'LineWidth', 2);
title('y = 3x^3 - 26x + 10');
xlabel('x');
ylabel('y');
grid on;

% Plot the first derivative
subplot(3,1,2);
plot(x, dydx, 'g', 'LineWidth', 2);
title('First Derivative');
xlabel('x');
ylabel('dy/dx');
grid on;

% Plot the second derivative
subplot(3,1,3);
plot(x, d2ydx2, 'r', 'LineWidth', 2);
title('Second Derivative');
xlabel('x');
ylabel('d^2y/dx^2');
grid on;

% Adjust the spacing between subplots
spacing = 0.02;
subplot(3,1,1); % Go back to the first subplot
pos = get(gca, 'Position');
pos(4) = pos(4) - spacing;
set(gca, 'Position', pos);

% Adjust the overall plot title and spacing
sgtitle('Function and Derivatives');
