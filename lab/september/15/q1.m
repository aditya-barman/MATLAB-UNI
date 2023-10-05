% Write a MATLAB program using "while-loop" to evaluate sin(x) for a given value of x. Use Taylor's Series. sin(x) = x - (x^3/3!) + (x^5/5!) - (x^7/7!) + ... correct upto 5 decimal places.

clc, clearvars, close all

x = input('Enter the value of x (in radians): ');

sin_x = 0;
term = x;
n = 0;
tolerance = 1e-5;

while abs(term) >= tolerance
    sin_x = sin_x + term;
    n = n + 1;
    term = (-1)^n * (x^(2*n + 1)) / factorial(2*n + 1);
end

fprintf('Approximate value of sin(%0.5f) = %0.5f\n', x, sin_x);
