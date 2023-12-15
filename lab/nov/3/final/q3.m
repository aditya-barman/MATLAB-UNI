clc, clearvars, close all

z = inline('cos(x) .* cos(y) .* (exp((-sqrt(x.^2 + y.^2)) / 4))', 'x', 'y');

x = linspace(-5, 5, 200);
y = linspace(-5, 5, 200);

ezsurf(z, x, y);


xlabel('x');
ylabel('y');
zlabel('cos(x) * cos(y) * (e^((-sqrt(x^2 + y^2)) / 4)');
title('Surface Plot of z');
