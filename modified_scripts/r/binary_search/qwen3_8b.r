binary_search <- function(vec, target) {
  left <- 1
  right <- length(vec)
  while (left <= right) {
    mid <- (left + right) %/% 2
    if (vec[mid] == target) {
      return(mid)
    } else if (vec[mid] < target) {
      left <- mid + 1
    } else {
      right <- mid - 1
    }
  }
  return(-1)
}