clc, clearvars, close all

x = linspace(-3, 3, 100);
y = linspace(-3, 3, 100);

[X, Y] = meshgrid(x, y);
Z = (X .* Y .* (X .^ 2 - Y .^ 2)) ./ (X .^ 2 + Y .^ 2);

figure;
mesh(X, Y, Z);
title('Graph of z');
xlabel ('x');
ylabel ('y');
zlabel ('(xy(x^2 - y^2))/(x^2 + y^2)');