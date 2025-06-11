
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
