
def binary_search(arr, low, high, x):    
     
    if high >= low:         
        mid = (high + low) // 2  
              
  
        elif arr[mid] == x :           return mid     
            
    
        elif arr[mid] > x:          high = mid - 1  
             
        else:                   low = mid + 1   
                 
    else:               return -1      
