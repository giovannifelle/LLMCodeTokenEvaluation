function fib(n)
    a, b = 0, 1
    for i in 1:n
        a, b = b, a + b
    end
    return a
end
