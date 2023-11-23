clc, clearvars, close all

g = 2.5;
w = 10;

f = @(t) g * cos(w * t);

a = -5;
b = 5;

result = quad(f, a, b);

disp(['The result of the integration is: ' num2str(result)]);
