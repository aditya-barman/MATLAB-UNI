for i = 1:5
    for j = 1:5-i
        fprintf(' ');
    end
    for j = 1:i
        fprintf('%d ', j);
    end
    fprintf('\n');
end
