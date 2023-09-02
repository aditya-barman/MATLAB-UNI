% Define the range and increment
t = 0.1:0.1:1.0;

% Evaluate the expression for each value of t
Z = (sin(t.^2)) ./ (t.^(3/2));

% Display the results
disp(Z')