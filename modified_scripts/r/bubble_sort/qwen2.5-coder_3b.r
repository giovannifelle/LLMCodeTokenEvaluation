```r
bubble_sort <- function(arr) {
  n <- length(arr)
  for (i in 1:(n-1)) {
    for (j in 1:(n-i-1)) {
      if (arr[j] > arr[j+1]) {
        temp <- arr[j]
        arr[j] <- arr[j+1]
        arr[j+1] <- temp
      }
    }
  }
  return(arr)
}
```