clc, clearvars, close all

integrateFunction();
function result = integrateFunction()
    % Define the integration limits
    a = 0;
    b = 2;

    % Define the function to integrate
    f = @(x) 1 ./ (x.^3 - 2.*x - 5);

    % Use the integral function for numerical integration
    result = integral(f, a, b);

    % Display the result
    disp(['The result of the integration is: ' num2str(result)]);
end
