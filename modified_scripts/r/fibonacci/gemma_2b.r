
fib_1 <- 0
fib_2 <- 1


while (fib_2 < 100) {

  fib_next <- fib_1 + fib_2
  

  fib_1 <- fib_2
  fib_2 <- fib_next
}