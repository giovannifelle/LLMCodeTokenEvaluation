
# qwen2_5-coder_3b CODE

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
# gemma_2b CODE

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
# qwen3_8b CODE
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
# deepseek-coder_1_3b CODE

matrix_multiplication = function(A, B) {
    if (nrow(A)!= ncol(B))  stop("Matrix dimensions are not correct")  
    result = rep(0, dim(A)[1]) 									    
    result = 	apply(A, MARGIN=2 , FUN = function (i){ 
        return(sum((B[i, ]*matrix_partitions)))  
    })            
    return(result)}   

# deepseek-coder_6_7b CODE

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
# qwen2_5-coder_7b CODE

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
# gemma_7b CODE

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
# qwen3_1_7b CODE
