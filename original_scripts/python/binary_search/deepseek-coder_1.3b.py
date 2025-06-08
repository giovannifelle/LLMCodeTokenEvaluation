```python
def binary_search(arr, low, high, x):    
    # Check base case (when the array is empty)        
    if high >= low:         
        mid = (high + low) // 2  
              
        # If element at middle index of list equals target value      
        elif arr[mid] == x :           return mid     
            
        # Else, we can decide the side to proceed with recursion.        
        elif arr[mid] > x:          high = mid - 1  
             
        else:                   low = mid + 1   
                 
    else:               return -1      
```