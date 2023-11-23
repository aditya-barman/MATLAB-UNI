clc, clearvars, close all

% % Create a surface plot of the function
% % f(x,y) = ((y^2)/2) + (1 - cos(x)) for -pi < x < pi and -2 < y < 2

% % Define the range for x and y
% x = linspace(-pi, pi, 100);
% y = linspace(-2, 2, 100);

% % Create a grid of x and y values
% [X, Y] = meshgrid(x, y);

% % Define the function
% Z = (Y.^2)/2 + (1 - cos(X));

% % Create a surface plot
% figure;
% surf(X, Y, Z);
% title('Surface plot of f(x,y) = (y^2)/2 + (1 - cos(x))');
% xlabel('x');
% ylabel('y');
% zlabel('f(x,y)');




% Create a meshgrid of the x and y values
[X, Y] = meshgrid(-pi:0.1:pi,-2:0.1:2);

% Calculate the function values at each meshgrid point
Z = (Y.^2)/2 + (1 - cos(X));

% Create a surface plot using the `surf` function
surf(X,Y,Z);

% Set the axis limits
%axis([-pi pi -2 2]);

% Add a title and labels to the plot
title('Surface plot of f(x,y) = (y^2)/2 + (1 - cos(x))');
xlabel('x');
ylabel('y');
zlabel('z');

% Display the plot
view(45,45);
