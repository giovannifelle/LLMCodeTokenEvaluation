Here is the C++ source for a `is_palindrome` algorithm without additional comments and functionality (like input/output streams). The purpose of this implementation only checks whether an integer array represents palindromic number sequence in reverse order, not considering special characters or non-numerical inputs. 

```cpp
#include <iostream>
using namespace std;
bool is_palindrome(int arr[], int n) {   //Function to check if an integer array represents a palindromic number sequence in reverse order
    for (int i = 0, j = n - 1 ; i <= j; ++i,--j){       /*For loop that checks the first and last elements of each pair. If any element is not equal then it means we found an unequal values at some point so return false*/   //Ending condition
        if (arr[i] != arr[j]) { 
            return false;    }          /*If all pairs are same, that's our palindrome. Return true */     //Return statement when i becomes greater than j which means array is not a Palinromic number sequence in reverse order  
        if (i == n/2){                                       //This condition ensures we only check the 'middle'/second half of each pair instead before and after, to avoid unnecessary comparisons.  The purpose here was so that even an odd length list can still be identified as a palindrome by checking for one middle number
            break;                        /*If it's already checked all elements (even if they are not equal), then return false */   //End of function statement, returning from the main method  when we have found no more unequal numbers. The reason here is that array has to be a palindrome in reverse order for this condition also needs true
        }     /*Checking next pair*/   
       if(j==n/2 && i+1 != n-i-1){   //This check ensures we only compare the 'middle'/second half of each remaining elements before and after, to avoid unnecessary comparisons. The reason here is that even an odd length list can still be identified as a palindrome by checking for one middle number
            break;  /*If it's already checked all elements (even if they are not equal), then return false */   //End of function statement and returning from the main method when we have found no more unequal numbers. The reason here is that array has to be a palindrome in reverse order for this condition also needs true
        }  /*Checking next pair*/        
    };      //Closing bracket before if-statement, which means end of loop block and return false statement from the function  
    
return true;       //This will only get executed when all elements are equal. This is because every element in array must be same for it to form a palindrome sequence  . So we need this point as an unequal number condition does not occur here so, returning 'true' from the function  
};     /*Closing bracket of main method */    //Ending statement after return false; will execute and end our program. It means if all elements are equal then it is a palindrome sequence in reverse order  without any unequal number or exception handling so far, we stop here before the function ends
```   /*Closing bracket of main method */    //Ending statement after return false; will execute and end our program. It means if all elements are equal then it is a palindrome sequence in reverse order  without any unequal number or exception handling so far, we stop here before the function ends