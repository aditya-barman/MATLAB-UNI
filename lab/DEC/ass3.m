clc, clearvars, close all

% Define the constants
g = 9.81;
m = 681;
cd = 0.25;

% Define the velocity function
v = @(t) sqrt(g*m/cd) * tanh(sqrt(g*cd/m) * t);

% Define the time range
t = linspace(0, 12, 1000);

% Calculate the average velocity
avg_v = mean(v(t));

% Display the result
fprintf('The average velocity over the range from t=0 to t=12s is %.2f m/s.\n', avg_v);
