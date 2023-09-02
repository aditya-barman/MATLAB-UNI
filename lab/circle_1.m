clc, clearvars, close all

% Prompt the user for the radius of the circle
r = input('Enter the radius of the circle: ');

% Create a figure
figure;

% Calculate the center of the circle
center = [0, 0];

% Calculate the coordinates of the bottom-left and top-right corners of the rectangle
bottom_left = center - r;
top_right = center + r;

% Draw the circle using a rectangle
rectangle('Position', [bottom_left, 2*r, 2*r], 'Curvature', [1, 1], 'EdgeColor', 'b');

% Set axis limits for better visualization
axis equal;
xlim([center(1) - r - 1, center(1) + r + 1]);
ylim([center(2) - r - 1, center(2) + r + 1]);

% Add labels and title
xlabel('X-axis');
ylabel('Y-axis');
title(['Circle with Radius ', num2str(r)]);

% Display the circle
grid on;
