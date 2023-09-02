clc, clearvars, close all

% Input coefficients of the quadratic equation: ax^2 + bx + c = 0
a = input('Enter coefficient a: ');
b = input('Enter coefficient b: ');
c = input('Enter coefficient c: ');

% Calculate the discriminant
D = b^2 - 4*a*c;
disp(D)
% Calculate the two roots
root1 = (-b + sqrt(D)) / (2*a);
root2 = (-b - sqrt(D)) / (2*a);

% Display the roots
disp(['Root 1: ' num2str(root1)]);
disp(['Root 2: ' num2str(root2)]);
