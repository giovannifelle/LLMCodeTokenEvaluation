
# qwen2_5-coder_3b CODE

fibonacci <- function(n) {
  if (n <= 0) return(0)
  if (n == 1) return(1)
  
  prev1 <- 0
  prev2 <- 1
  current <- 0
  
  for (i in 2:n) {
    current <- prev1 + prev2
    prev1 <- prev2
    prev2 <- current
  }
  
  return(current)
}
# gemma_2b CODE

fib_1 <- 0
fib_2 <- 1


while (fib_2 < 100) {

  fib_next <- fib_1 + fib_2
  

  fib_1 <- fib_2
  fib_2 <- fib_next
}
# qwen3_8b CODE
fib <- function(n) {
  if (n == 0) return(0)
  if (n == 1) return(1)
  fib(n - 1) + fib(n - 2)
}
# deepseek-coder_1_3b CODE

# deepseek-coder_6_7b CODE

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

# qwen2_5-coder_7b CODE

fibonacci <- function(n){
  if(n <= 1) return(n)
  a <- 0
  b <- 1
  for(i in 2:n){
    temp <- a + b
    a <- b
    b <- temp
  }
  return(b)
}
# gemma_7b CODE

fib <- function(n) {
  if (n < 2) {
    return(n)
  } else {
    return(fib(n-1) + fib(n-2))
  }
}

# qwen3_1_7b CODE
