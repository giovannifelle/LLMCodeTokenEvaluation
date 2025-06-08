```r
binary_search <- function(arr, x) {
  low <- 1
  high <- length(arr)
  
  while (low <= high) {
    mid <- low + (high - low) %/% 2
    
    if (arr[mid] == x) {
      return(mid)
    }
    
    if (arr[mid] < x) {
      low <- mid + 1
    } else {
      high <- mid - 1
    }
  }
  
  return(-1)
}
```