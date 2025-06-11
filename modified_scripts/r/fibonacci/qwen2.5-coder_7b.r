
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