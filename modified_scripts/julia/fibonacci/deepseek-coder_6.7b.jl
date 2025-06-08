Sure, here is the source code for a recursive Fibonacci sequence in Julia without comments or explanations:

```julia
fib(n) = n <= 1 ? n : fib(n-1) + fib(n-2)
```