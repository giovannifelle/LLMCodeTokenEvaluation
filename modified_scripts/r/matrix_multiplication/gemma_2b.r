
matrix_multiplication <- function(matrix1, matrix2) {
  n <- nrow(matrix1)
  m <- ncol(matrix2)
  result <- matrix(NA, n, m)
  for (i in 1:n) {
    for (j in 1:m) {
      result[i, j] <- matrix1[i, 1] * matrix2[j, 1] + matrix1[i, 2] * matrix2[j, 2] + ... + matrix1[i, n] * matrix2[j, n]
    }
  }
  return(result)
}