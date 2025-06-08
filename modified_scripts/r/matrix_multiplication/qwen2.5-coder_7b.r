```r
matrix_multiplication <- function(A, B) {
  n <- nrow(A)
  m <- ncol(B)
  p <- ncol(A)
  
  C <- matrix(0, n, m)
  
  for (i in 1:n) {
    for (j in 1:m) {
      for (k in 1:p) {
        C[i, j] <- C[i, j] + A[i, k] * B[k, j]
      }
    }
  }
  
  return(C)
}
```