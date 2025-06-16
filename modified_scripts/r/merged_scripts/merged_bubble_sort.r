
# qwen2_5-coder_3b CODE

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
# gemma_2b CODE

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
# qwen3_8b CODE
bubble_sort <- function(x) {
  n <- length(x)
  for (i in 1:n) {
    for (j in 1:(n - i)) {
      if (x[j] > x[j + 1]) {
        temp <- x[j]
        x[j] <- x[j + 1]
        x[j + 1] <- temp
      }
    }
  }
  x
}
# deepseek-coder_1_3b CODE

bubble_sort <- function(x) {
    n = length(x)
    
    for (i in seq_len(n)) {
        swapped = FALSE 
        
       for (j in seq_len(n - i -1)) { 
            if (x[j] > x[j+1])  { 
                temp = x[j];         
              	x[j],temp] =  c(x[j+1])  ;#
              	swapped = TRUE;     
             }                    
         }                     
         
         if (! swapped){break} 
     } 			
     
     return (x)	
} 		    

# deepseek-coder_6_7b CODE

bubble_sort <- function(x) {
    n <- length(x)
    repeat {
        swapped <- FALSE
        for (i in 1:(n - 1)) {
            if (x[i] > x[i + 1]) {
                tmp <- x[i]
                x[i] <- x[i + 1]
                x[i + 1] <- tmp
                swapped <- TRUE
            }
        }
        n <- n - 1
        if (!swapped) return(x)
    }
}

# qwen2_5-coder_7b CODE

bubble_sort <- function(arr) {
  n <- length(arr)
  for (i in 1:(n-1)) {
    for (j in 1:(n-i)) {
      if (arr[j] > arr[j+1]) {
        temp <- arr[j]
        arr[j] <- arr[j+1]
        arr[j+1] <- temp
      }
    }
  }
  return(arr)
}
# gemma_7b CODE

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
# qwen3_1_7b CODE
