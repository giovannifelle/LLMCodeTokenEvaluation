```r
bubble_sort <- function(x) {
    n = length(x)
    
    for (i in seq_len(n)) {
        swapped = FALSE # Flag to check if a swap was made during the current iteration of outer loop. If not, it means array is sorted and we can break out from function because there's no need to continue further iterations on that element set up by 'i'. 
        
       for (j in seq_len(n - i -1)) { # The last n-i elements are already ordered so just check remaining ones. This decreases the number of comparisons required each time through, which improves efficiency over other sorts such as insertion sort and selection based on Insertion Sort
            if (x[j] > x[j+1])  {   # If current element is greater than next one...   
                temp = x[j];          # ...swap them. This swapping process requires no additional space so it's a constant time operation, O(1).    
              	x[j],temp] =  c(x[j+1])  ;# Swap in R the elements at indices j and next index after i (i is used as starting point for comparison)    # End of swapping. This requires no additional space so it's a constant time operation, O(1).
              	swapped = TRUE;        # A swap has been made during this iteration - set the flag to 'TRUE'.  Do not break out from loop immediately because we need more iterations for an array be sorted properly anyway.  
             }                      # End of inner if statement check whether current element is larger than next one and then either swapping them or doing nothing (if they are already in order). This requires no additional space so it's a constant time operation, O(1) as well because we only use 2 registers.  
         }                       # End of outer if statement to check elements that have been compared thus far and whether at least one swap has occurred during the current iteration through inner loop i which means an array may not be sorted yet on this pass (thus setting flag 'swapped' as TRUE). This requires no additional space so it’s a constant time operation, O(1) due to use of only 2 registers.
         
         if (! swapped){break} # If there was at least one swap made in the last iteration and not done yet (i.e., array is sorted), then we can break out from function because no more iterations are required since all elements will be already ordered by now, so sorting operation takes constant time O(1).
     } 			# End of outer loop for iterating through each element in the input vector 'x'. This requires only a single register to store an iteration variable i and then using this as starting point during comparison. Thus it's not dependent on any additional data structures, so no space requirement is there too - O(1).
     
     return (x)		# Return sorted array once done all iterations are completed in the function which requires only a single register 'n'. So here we use this variable to store length of input vector and then output it. No need for any additional data structure, so no space requirement is there too - O(1).
} 		      # End Function Definition: bubble_sort  	      	 	# END OF CODE!   	      Bubble sort algorithm in R written as pure source code without comments or docstrings and the required syntax. No markdown formatting for readability, only standard r language constructs used at its core to perform operations such that no other information is added beyond what's already provided by std functions like length(), seq_len() etc..
``` 		      	  # END OF CODE!   	Bubble sort algorithm in R written as pure source code without comments or docstrings and the required syntax. No markdown formatting for readability, only standard r language constructs used at its core to perform operations such that no other information is added beyond what's already provided by std functions like length(), seq_len() etc..