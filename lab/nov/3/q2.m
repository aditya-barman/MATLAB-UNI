clc, clearvars, close all

% % Create a meshgrid of x and y values
% [x, y] = meshgrid(-3:0.1:3);

% % Calculate the z values
% z = (x.*y.*(x.^2 - y.^2)) ./ ((x.^2) + (y.^2));

% % Plot the surface
% figure;
% mesh(x, y, z);

% % Set the axis labels and title
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Graph of z = (xy((x^2) - (y^2)))/((x^2) + (y^2))');

% % Set the axis limits
% xlim([-3 3]);
% ylim([-3 3]);


% Define the range for x and y
x = linspace(-3, 3, 100);
y = linspace(-3, 3, 100);

% Create a grid of x and y values
[X, Y] = meshgrid(x, y);

% Calculate the values of the function
Z = (X .* Y .* (X.^2 - Y.^2)) ./ (X.^2 + Y.^2);

% Create the graph
figure;
mesh(X, Y, Z);
title('Graph of z = (xy(x^2 - y^2))/(x^2 + y^2)');
xlabel('x');
ylabel('y');
zlabel('z');
