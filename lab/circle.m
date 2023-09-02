clc, clearvars, close all

r = input('Enter radius r:  ');
theta = linspace(0, 2*pi, 100);
x = r*cos(theta);
y = r*sin(theta);
plot(x, y);
axis equal;
