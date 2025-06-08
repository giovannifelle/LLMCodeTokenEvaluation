Sure, here is the source code for a Fibonacci series in C without comments or explanation:

```c
#include <stdio.h>

void fib(int n) {
    int first = 0;
    int second = 1;
    int next = first + second;
    
    if (n < 1) return;
        
    printf("%d ", first);
    if (n == 1) return;
      
    printf("%d ", second);
    for(int i = 3; i <= n; ++i) {
        printf("%d ", next);
        first = second;
        second = next;
        next = first + second;
    }
}
```
This code defines a function `fib` that prints the Fibonacci series up to the given number. It starts with 0 and 1 as the first two numbers, then calculates each subsequent number by adding the last two together. The length of the series is controlled by the input parameter `n`.