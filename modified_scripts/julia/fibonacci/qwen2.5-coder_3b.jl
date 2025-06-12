
function fib(n)
    if n <= 0
        return 0
    elseif n == 1
        return 1
    else
        a, b = 0, 1
        for i = 2:n
            a, b = b, a + b
        end
        return b
    end
end
