clc, clearvars, close all

% Input coefficients of the quadratic equation
a = input('Enter coefficient a: ');
b = input('Enter coefficient b: ');
c = input('Enter coefficient c: ');

% Calculate the discriminant
discriminant = (b^2) - (4*a*c);

% Check the value of the discriminant to determine the nature of roots
if discriminant > 0
    % Two real and distinct roots
    root1 = (-b + sqrt(discriminant)) / (2*a);
    root2 = (-b - sqrt(discriminant)) / (2*a);
    disp('Two real and distinct roots:');
    disp(['Root 1: ', num2str(root1)]);
    disp(['Root 2: ', num2str(root2)]);
elseif discriminant == 0
    % One real root (repeated)
    root = -b / (2*a);
    disp('One real root (repeated):');
    disp(['Root: ', num2str(root)]);
else
    % Complex roots
    realPart = -b / (2*a);
    imagPart = sqrt(-discriminant) / (2*a);
    disp('Complex roots:');
    disp(['Root 1: ', num2str(realPart), ' + ', num2str(imagPart), 'i']);
    disp(['Root 2: ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
end
roots
