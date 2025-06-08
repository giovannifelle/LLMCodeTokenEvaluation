Sure, here's the source code for a binary search algorithm in R language without comments, documentation and any syntax used for it:

```R
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
    
    # If target is not in the array, return -1
    return(-1)  
}
```