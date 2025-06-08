```java
public class Main {    
    public static void binary_search(int arr[], int x) {  
        // Initialize starting and ending indices of the array          
        int start = 0;     
        int end = arr.length - 1;         
        
       while (start <= end){             
            // Calculate mid index    
             int middleIndex=(start+end)/2 ;   
              
                if(arr[middleIndex]==x) {  
                    System.out.println("Element found at position: " + ((middleIndex + 1)));//+ 1 because array indexes start from 0, not 1 as in java language    
                      return;      //return after element is found   
                }              if(arr[middleIndex]<x) {              
                    start = middleIndex+1 ;                  
            } else{                           end= middleIndex -1;}          }       System.out.println("Element not present in array");   return;}}  public static void main (String args[]){    int arr[] =  {2,3,4,10,40};     binary_search(arr, 10); }}
```
In this code: The `binary_search` function takes an integer Array and the element you are looking for. It uses a while loop to continue searching until it finds or cannot find if present in array anymore (i.e., when start > end). Inside each iteration of our do-while, we calculate middle index then compare that value with your search key 'x'. If they're equal - print the position and return from function because element is found! Otherwise move starting/ending point depending on whether x was greater or smaller than arr[middleIndex].