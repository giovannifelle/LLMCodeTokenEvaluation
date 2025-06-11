
public class Main {    
    public static void binary_search(int arr[], int x) {  
        
        int start = 0;     
        int end = arr.length - 1;         
        
       while (start <= end){             
            
             int middleIndex=(start+end)/2 ;   
              
                if(arr[middleIndex]==x) {  
                    System.out.println("Element found at position: " + ((middleIndex + 1)));
                      return;
                }              if(arr[middleIndex]<x) {              
                    start = middleIndex+1 ;                  
            } else{                           end= middleIndex -1;}          }       System.out.println("Element not present in array");   return;}}

