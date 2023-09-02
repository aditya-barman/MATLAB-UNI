% Taking input from the user
num1 = input('Enter the first number: ');
num2 = input('Enter the second number: ');
num3 = input('Enter the third number: ');

% Using one if-end block to find the largest
largest = num1;

if num2 > largest
    largest = num2;
end

if num3 > largest
    largest = num3;
end

disp(['The largest number is: ' num2str(largest)]);
