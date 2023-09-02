clc, clearvars, close all

% Get the input equation in the form of ax^2 + bx + c = 0
equation = input('Enter the quadratic equation in the form ax^2 + bx + c = 0: ', 's');

% Replace 'x' with '*x' to ensure multiplication is explicit
equation = strrep(equation, 'x', '*x');

% Create a symbolic variable
syms x;

% Define the equation
eq = str2sym(equation);

% Get the coefficients
coefficients = coeffs(eq, x);

% Ensure three coefficients are extracted (a, b, c)
if numel(coefficients) ~= 3
    error('Invalid input format. Make sure you enter the equation in the correct form.');
end

a = coefficients(1);
b = coefficients(2);
c = coefficients(3);

% Calculate the discriminant
discriminant = b^2 - 4*a*c;

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
