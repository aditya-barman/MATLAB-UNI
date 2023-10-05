clc, clearvars, close all

x = input('Enter the value of x (in radians): ');

cos_x = 1;
term = 1;
n = 1;
tolerance = 1e-5;

while abs(term) >= tolerance
    n = n + 1;
    term = (-1)^(n-1) * (x^(2*n-2)) / factorial(2*n-2);
    cos_x = cos_x + term;
end

fprintf('Approximate value of cos(%0.5f) = %0.5f\n', x, cos_x);
