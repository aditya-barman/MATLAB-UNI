clc, clearvars, close all


% Define the function
f = @(x) 3*x^3 - 26*x + 10;

% Define the interval for x
x = linspace(-2, 4, 100);

% Calculate the function values, first derivatives, and second derivatives
y = f(x);
dy = 3*x^2 - 26;
ddy = 6*x;

% Plot the function, first derivative, and second derivative
plot(x, y, 'b', x, dy, 'r', x, ddy, 'g')

% Label the axes
xlabel('x')
ylabel('y')

% Add a legend
legend('y = (3*(x^3)) - (26*x) + 10', '1st derivative', '2nd derivative')
