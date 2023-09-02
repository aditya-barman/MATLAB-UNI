clc, clearvars, close all

% Taking input from the user
num1 = input('Enter the first number: ');
num2 = input('Enter the second number: ');
num3 = input('Enter the third number: ');


largest = num1;  % Assume num1 is the largest initially

if num2 > largest
    largest = num2;
end

if num3 > largest
    largest = num3;
end

disp(['The largest number is: ' num2str(largest)]);
