```r
matrix_multiplication <- function(matrix1, matrix2) {
  if (ncol(matrix1) != nrow(matrix2)) {
    stop("Matrices are not compatible for multiplication.")
  }
  result <- matrix(0, nrow(matrix1), ncol(matrix2))
  for (i in 1:nrow(matrix1)) {
    for (j in 1:ncol(matrix2)) {
      for (k in 1:ncol(matrix1)) {
        result[i, j] <- result[i, j] + matrix1[i, k] * matrix2[k, j]
      }
    }
  }
  return(result)
}
```