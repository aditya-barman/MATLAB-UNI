clc, clearvars, close all

f = inline('((y^2)/2) + (1 - cos(x))', 'x', 'y');
ezsurf(f, [-pi pi -2 2]);

title('Surface Plot of f(x,y)');
xlabel('x');
ylabel('y');
zlabel('((y^2)/2) + (1 - cos(x))');