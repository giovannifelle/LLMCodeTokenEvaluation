```c
int binary_search(int arr[], int start, int end, int x) {   // define the array and its size for search functionality (arr,start index ,end Index, element to be searched ) 
    if (end >= start) {                          // base case when there are elements left in our subarray that we want to check.
        int mid = start + (end - start) / 2;     // calculate the middle point of array for binary search  
        
        /* If x is greater, ignore left half */     
        if (arr[mid] < x ) {   
            return binary_search( arr , mid + 1, end, x );      
        }         
 
        // Otherwise it can only be present in right part  
        else if (arr[mid] > x) {    
             return binary_search( arr, start, mid - 1, x);     
         }   
         
        /* If we reach here then element is found */      
        else{            // when the middle point's value equals to our target. So just give it a positive output  
              return mid;     // or any index that represents where you find your targeted number in sorted array 
         }     
    }         
    /* If we reach here then element is not present */      
    return -1 ;        // so returning negative one which will indicate the absence of target value.  
}            
```     This code defines a binary search function that takes an integer array and two integers (starting index, ending index) as parameters to find if some number exists in it or not via recursive calls until we get our desired element from there onwards using divide conquer algorithm ie the middle of left half is less than x then you will check right part else only till mid-1.