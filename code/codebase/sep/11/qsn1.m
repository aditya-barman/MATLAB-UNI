%{
    Plot the following function using for loops:
    y =
    x when 0 <= x <= 1
    (x*(sin(1/x))) when 1 < x <= 5
    ((x^2)*(sin(1/x))) when 5 < x <= 10
    1 otherwise
%}

clc, clearvars, close all

x = linspace(0, 10, 1000);
y = zeros(size(x));

for i = 1:length(x)
    if x(i) >= 0 && x(i) <= 1
        y(i) = x(i);
    elseif x(i) > 1 && x(i) <= 5
        y(i) = x(i) * sin(1 / x(i));
    elseif x(i) > 5 && x(i) <= 10
        y(i) = (x(i)^2) * sin(1 / x(i));
    else
        y(i) = 1;
    end
end

plot(x, y);
title('Plot of the Function');
xlabel('x');
ylabel('y');
grid on;
