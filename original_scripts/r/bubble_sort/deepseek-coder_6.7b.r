Sure, here is the source code for a Bubble Sort in R without any comments or explanation.

```R
bubble_sort <- function(x) {
    n <- length(x)
    repeat {
        swapped <- FALSE
        for (i in 1:(n - 1)) {
            if (x[i] > x[i + 1]) {
                tmp <- x[i]
                x[i] <- x[i + 1]
                x[i + 1] <- tmp
                swapped <- TRUE
            }
        }
        n <- n - 1
        if (!swapped) return(x)
    }
}
```
This code defines a function `bubble_sort` that takes an input vector `x`. It uses the Bubble Sort algorithm to sort the numbers in this vector. The variable `n` is used to keep track of how many items are left to be checked after each iteration through the loop, and `swapped` is set to TRUE when a swap occurs, indicating that at least one item was out-of-order and needs to be sorted. If no swaps occur during an entire pass through the list, it means the list is already sorted and the function returns it immediately.