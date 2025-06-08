```r
# Fibonacci algorithm in R

# Initialize the first two Fibonacci numbers
fib_1 <- 0
fib_2 <- 1

# Keep calculating Fibonacci numbers until the third one exceeds 100
while (fib_2 < 100) {
  # Calculate the next Fibonacci number
  fib_next <- fib_1 + fib_2
  
  # Update the first two Fibonacci numbers
  fib_1 <- fib_2
  fib_2 <- fib_next
}
```