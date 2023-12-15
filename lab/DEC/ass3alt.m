clc, clearvars, close all

% Problem 2: Calculate the average value of the function v(t) = sqrt(gm/cd) * tanh(sqrt(gcd/m) * t) over the range t = 0 to 12

g = 9.81; % gravitational acceleration (m/s^2)
m = 68.1; % mass of the bungee jumper (kg)
cd = 0.25; % drag coefficient

% Define the function v(t)
v = @(t) sqrt(g*m/cd) * tanh(sqrt(g*cd/m) * t);

% Calculate the average value using numerical integration
t = 0:0.1:12; % Define the range of t-axis
v_avg = trapz(t, v(t)) / (t(end) - t(1));

% Display the average value
fprintf('Average velocity of the bungee jumper: %.2f m/s\n', v_avg);
