function result = integral_fn(a, b)

    function y = myfun(x)
        y = 1 ./ (x.^3 - 2*x - 5);
    end

    result = quad(@myfun, a, b);
end
