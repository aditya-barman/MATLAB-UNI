clc, clearvars, close all

% % Define the range for x and y
% x = linspace(-5, 5, 100);
% y = linspace(-5, 5, 100);

% % Create a grid of x and y values
% [X, Y] = meshgrid(x, y);

% % Calculate the values of the function
% Z = cos(X) .* cos(Y) .* exp(-((X.^2 + Y.^2)/4));

% % Create the surface plot
% figure;
% surf(X, Y, Z);
% title('Surface plot of z = cos(x) * cos(y) * exp(-((x^2 + y^2)/4))');
% xlabel('x');
% ylabel('y');
% zlabel('z');

z = @(x, y) cos(x) .* cos(y) .* exp(-((x.^2 + y.^2) / 4));

% Define the x and y ranges
x = -5:0.1:5;
y = -5:0.1:5;

% Create a meshgrid of x and y values
[X, Y] = meshgrid(x, y);

% Calculate the z values
Z = z(X, Y);

% Plot the surface
figure;
surf(X, Y, Z);

% Set the axis labels
xlabel('x');
ylabel('y');
zlabel('z');

% Set the title
title('Surface Plot of z = (cos(x)) * (cos(y)) * (e^((-((x^2) + (y^2)))/4))');
