clc, clearvars, close all

% Problem 1: Plot the function f(x) = (x^2 - 5x + 10) / (x^2 - 2x - 3)

x = -10:0.1:10; % Define the range of x-axis
y = (x.^2 - 5*x + 10) ./ (x.^2 - 2*x - 3); % Calculate the function values

% Plot the function
plot(x, y);

% Set the range of the y-axis
ylim([-20 20]);

% Label the axes
xlabel('x');
ylabel('f(x)');

% Title the plot
title('Plot of f(x) = (x^2 - 5x + 10) / (x^2 - 2x - 3)');

% Find the vertical asymptotes
denominator = x.^2 - 2*x - 3;
asymptotes = roots(denominator);

% Plot the vertical asymptotes as dashed lines
hold on;
plot([asymptotes(1) asymptotes(1)], ylim, 'k--');
plot([asymptotes(2) asymptotes(2)], ylim, 'k--');
hold off;

% Explain the plot
text(-9, 18, 'Vertical asymptotes at x = -3 and x = 1', 'FontSize', 10);
