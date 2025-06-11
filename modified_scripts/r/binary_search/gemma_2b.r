
binary_search <- function(arr, target) {
  left <- 1
  right <- length(arr)
  while (left <= right) {
    mid <- floor((left + right) / 2)
    guess <- arr[mid]
    if (guess == target) {
      return(mid)
    } else if (guess < target) {
      left <- mid + 1
    } else {
      right <- mid - 1
    }
  }
  return(-1)
}