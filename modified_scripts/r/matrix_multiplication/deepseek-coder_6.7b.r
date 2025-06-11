
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