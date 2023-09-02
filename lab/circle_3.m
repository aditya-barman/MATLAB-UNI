clc, clearvars, close all

% Prompt the user for the radius
r = input('Enter the radius of the circle: ');

% Generate theta values
theta = linspace(0, 2*pi, 100);

% Calculate the x and y coordinates of the points on the circle
x = r * cos(theta);
y = r * sin(theta);

% Plot the circle
plot(x, y);
axis equal; % Make the aspect ratio equal to get a perfect circle
title(['Circle of Radius ', num2str(r)]);
xlabel('X-axis');
ylabel('Y-axis');
grid on;
