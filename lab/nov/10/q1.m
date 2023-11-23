clc, clearvars, close all

f = @(x, a, b, c) a * x.^2 + b * x + c;

a1 = -3.9; b1 = 52; c1 = 0;
a2 = 1.3; b2 = 0.2; c2 = 30;

x = linspace(-25, 25, 1000);

y1 = f(x, a1, b1, c1);
y2 = f(x, a2, b2, c2);

figure;
plot(x, y1, 'b-', 'LineWidth', 2, 'DisplayName', 'f(x) = -3.9*x^2 + 52*x');
hold on;
plot(x, y2, 'r-', 'LineWidth', 2, 'DisplayName', 'f(x) = 1.3*x^2 + 0.2*x + 30');

xlabel('x');
ylabel('f(x)');
title('Plot of Quadratic Functions');
legend('Location', 'best');
grid on;
hold off;
