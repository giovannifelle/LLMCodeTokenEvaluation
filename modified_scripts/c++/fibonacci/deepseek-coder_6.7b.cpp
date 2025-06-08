Sure, here is a simple implementation of the Fibonacci sequence in C++ without any comments:

```cpp
int fib(int n) {
    if (n <= 1) return n;
    else return fib(n-1) + fib(n-2);
}
```
This function calculates the `n`th Fibonacci number. The Fibonacci sequence is defined such that each number after the first two is the sum of the two preceding ones (0, 1, 1, 2, 3, 5, 8, ...).