
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