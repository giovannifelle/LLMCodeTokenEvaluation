matrix_multiplication <- function(a, b) {
  n <- nrow(a)
  m <- ncol(a)
  p <- ncol(b)
  result <- matrix(0, n, p)
  for (i in 1:n) {
    for (j in 1:p) {
      for (k in 1:m) {
        result[i, j] <- result[i, j] + a[i, k] * b[k, j]
      }
    }
  }
  result
}