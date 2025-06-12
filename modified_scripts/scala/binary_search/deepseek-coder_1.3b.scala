
def binary_search_iterative(arr :Array [Int] , low : Int, high : Int): Option[Int] = {
   var mid = 0; 
     if (high >= low) {      
        mid = low + (high - low) / 2;      
        
        if(arr(mid) == target){          return Some(mid);}     else   
                
           if ( arr(mid) < target ) { binary_search_iterative(arr , mid+1, high)}  
                      return None;    else               