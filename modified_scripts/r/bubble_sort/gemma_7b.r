
bubble_sort <- function(arr) {
  for (i in 1:length(arr) - 1) {
    for (j in i + 1:length(arr)) {
      if (arr[i] > arr[j]) {
        arr[i] <- arr[j]
        arr[j] <- arr[i]
      }
    }
  }
  arr
}