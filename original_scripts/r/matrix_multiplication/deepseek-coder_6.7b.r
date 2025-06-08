Sure, here is the source code for matrix multiplication in R without comments and with strict programming rules adhered to:

```R
matrix_multiplication <- function(A, B) {
  if (ncol(A) != nrow(B)) stop("Matrices are not m*n and n*p")
  
  p = matrix(0, nrow(A), ncol(B))
  
  for (i in 1:nrow(A)) {
    for (j in 1:ncol(B)) {
      for (k in 1:ncol(A)) {
        p[i, j] = p[i, j] + A[i, k] * B[k, j]
      }
    }
  }
  
  return(p)
}
```
You can use this function by passing two matrices to it as arguments. For example:

```R
A = matrix(c(1,2,3,4), nrow=2)
B = matrix(c(5,6,7,8), nrow=2)
matrix_multiplication(A, B)
```