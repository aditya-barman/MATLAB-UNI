function [I] = integ(a, b)
    I = quad(myfun2, a, b);

    function [f] = myfun2(x)
        f = @(x) (x .^ 3 - 2*x - 5);
    end
end