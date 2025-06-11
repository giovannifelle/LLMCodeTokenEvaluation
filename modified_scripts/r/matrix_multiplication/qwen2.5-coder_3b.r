
mat_mult <- function(A, B) {
  nrow_A <- nrow(A)
  ncol_A <- ncol(A)
  nrow_B <- nrow(B)
  ncol_B <- ncol(B)
  
  if (ncol_A != nrow_B) {
    stop("Matrix dimensions do not allow multiplication.")
  }
  
  C <- matrix(0, nrow = nrow_A, ncol = ncol_B)
  
  for (i in 1:nrow_A) {
    for (j in 1:ncol_B) {
      for (k in 1:ncol_A) {
        C[i, j] <- C[i, j] + A[i, k] * B[k, j]
      }
    }
  }
  
  return(C)
}