Here is the pure source code for the Fibonacci algorithm in R:

```R
fibonacci <- function(n) {
    if (n <= 0) return("Input should be a positive integer.")
    else if (n == 1) return(0)
    else if (n == 2) return(1)
    else {
        a = 0; b = 1; c = NULL
        for(i in 3:n){
            c = a + b
            a = b
            b = c
        }
        return(c)
    }
}
```
This function takes an integer `n` as input and returns the nth number in the Fibonacci sequence. The Fibonacci sequence is defined such that each number after the first two is the sum of the two preceding ones (0, 1, 1, 2, 3, 5, 8, ...). If `n` is not a positive integer, it returns an error message.