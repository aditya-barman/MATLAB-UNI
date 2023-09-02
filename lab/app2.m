% Define the range and increment
x = 0.1:0.1:1.0;

% Evaluate the expression for the entire range of x values
y = (3*log10(x) + (exp(x.^2 - 5) .* (log(x).^(1/3)))) ./ ...
    (cos((pi*x.^2)/6) + sin((pi*x.^2)/3));

% Display the results
disp(y')