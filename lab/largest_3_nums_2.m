clc, clearvars, close all

num1 = input('Enter the first number: ');
num2 = input('Enter the second number: ');
num3 = input('Enter the third number: ');

if num1 >= num2 && num1 >= num3
    largest = num1;
elseif num2 >= num1 && num2 >= num3
    largest = num2;
else
    largest = num3;
end

disp(['The largest number is: ' num2str(largest)]);
