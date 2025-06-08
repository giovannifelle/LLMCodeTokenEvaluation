Sure, here is a simple implementation of the Fibonacci sequence in Crystal language without comments or explanations:

```crystal
def fib(n)
    return n <= 1 ? n : fib(n - 1) + fib(n - 2)
end

puts fib(30) # outputs the result of fibonacci sequence for 30th term, which is quite large number.
```
This code defines a recursive function `fib` that calculates Fibonacci numbers by adding together two previous Fibonacci numbers. The base cases are defined as `return n <= 1 ? n : fib(n - 1) + fib(n - 2)`, which return the number itself if it's less than or equal to one (as these are our base cases), and otherwise they recursively call the function for two previous numbers. The last line is just an example of how you can use this function, calculating the 30th Fibonacci number.