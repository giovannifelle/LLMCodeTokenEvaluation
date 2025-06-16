
# qwen2_5-coder_3b CODE

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

# gemma_2b CODE

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
# qwen3_8b CODE
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
# deepseek-coder_1_3b CODE

binary_search <- function(arrangeebleList, target) {  
    left = 0 
   
    while(left <= right){ 
        mid = (left + right)/2 

# deepseek-coder_6_7b CODE

binary_search <- function(arr, target) {
    left = 1
    right = length(arr)
    
    while (left <= right) {
        mid = ceiling((right + left)/2)
        
        if (target == arr[mid]) {
            return(mid) 
        } else if (target < arr[mid]) {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    return(-1)  
}
# qwen2_5-coder_7b CODE

binary_search <- function(arr, x) {
  low <- 1
  high <- length(arr)
  while (low <= high) {
    mid <- floor((low + high) / 2)
    if (arr[mid] == x) return(mid)
    else if (arr[mid] < x) low <- mid + 1
    else high <- mid - 1
  }
  return(-1)
}

# gemma_7b CODE

binary_search <- function(arr, target) {
  low <- 1
  high <- length(arr)
  while (low <= high) {
    mid <- floor((low + high) / 2)
    if (arr[mid] == target) {
      return(mid)
    } else if (arr[mid] < target) {
      low <- mid + 1
    } else {
      high <- mid - 1
    }
  }
  return(-1)
}
# qwen3_1_7b CODE
