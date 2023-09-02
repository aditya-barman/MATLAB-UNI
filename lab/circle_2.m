clc, clearvars, close all

% Prompt the user for the radius of the circle
r = input('Enter the radius of the circle: ');

% Generate points along the circumference of the circle
theta = linspace(0, 2*pi, 100); % 100 points around the circle
x = r * cos(theta);
y = r * sin(theta);

% Create a figure
figure;

% Plot the circle
plot(x, y, 'b', 'LineWidth', 2);

%{
Set axis limits for better visualization
axis equal;
xlim([-r - 1, r + 1]);
ylim([-r - 1, r + 1]);
%}

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
title(['Circle with Radius ', num2str(r)]);

% Display the circle
grid on;
