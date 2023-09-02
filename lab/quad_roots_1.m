clc, clearvars, close all

a = input('coeff of x^2:    ');
b = input('coeff of x:    ');
c = input('value of c:    ');
roots = quad_roots(a, b, c);
disp(roots)