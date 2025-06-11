
bubble_sort <- function(nums) {
  for (i in 1:length(nums)) {
    for (j in 2:length(nums)) {
      if (nums[j] < nums[j - 1]) {
        temp <- nums[j]
        nums[j] <- nums[j - 1]
        nums[j - 1] <- temp
      }
    }
  }
  return(nums)
}