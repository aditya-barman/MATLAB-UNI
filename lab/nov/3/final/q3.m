clc, clearvars, close all

z = inline('cos(x) .* cos(y) .* (exp((-sqrt(x.^2 + y.^2)) / 4))', 'x', 'y');

x_range = linspace(-5, 5, 200);
y_range = linspace(-5, 5, 200);

ezsurf(z, x_range, y_range);


xlabel('x');
ylabel('y');
zlabel('cos(x) * cos(y) * (e^((-sqrt(x^2 + y^2)) / 4)');
title('Surface Plot of z');
