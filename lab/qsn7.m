clc, clearvars, close all

% Define the values of x
x_values = [-1.5, -0.5, 0, 0.5, 1.5, 5.5];

% Initialize an array to store corresponding y values
y_values = zeros(size(x_values));

% Calculate y values based on the given conditions
for i = 1:length(x_values)
    x = x_values(i);
    if -1 <= x && x <= 0
        y_values(i) = x^2 * sin(x);
    elseif 0 < x && x < 5
        y_values(i) = (1/x) * sin(x);
    else
        y_values(i) = -1;
    end
end

% Display calculated x and y values
disp(' x      y');
disp('--------------');
for i = 1:length(x_values)
    fprintf('%4.1f   %6.4f\n', x_values(i), y_values(i));
end

% Plot the x and y values
figure;
plot(x_values, y_values, '-o');
xlabel('x');
ylabel('y');
title('Plot of y(x)');
grid on;
