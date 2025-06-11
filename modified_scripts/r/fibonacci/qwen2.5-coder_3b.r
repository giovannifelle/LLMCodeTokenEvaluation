
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