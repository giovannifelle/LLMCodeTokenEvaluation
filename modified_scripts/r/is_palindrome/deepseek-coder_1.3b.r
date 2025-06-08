```R
is_palindrome <- function(word){
    word = tolower(gsub("[^a-z0-9]", "", word)) #remove non alphanumeric characters and convert all letters into lower case 
     if (unique(strsplit(word, NULL)[[1]] == reverse(strsplit(word, NULL)[[1]]))) {   #if the reversed string is equal to original one return TRUE else FALSE.   
         result <- paste0("The word ", word , "is a palindrome.") 
     }else{
          result<-"The Word", word,"Is Not Palindromic.";            
      }  
       print(result);                  #print the output message to user.   
} 
```
In this code, we first remove all non-alphanumeric characters and convert each letter into lowercase using `gsub` function then compare it with its reverse string by comparing if their sequences are equal or not in R (using strsplit on a word). If they match exactly the same character sequence from both sides of comparison returns TRUE, else FALSE. The result is printed to user through print statement which can be modified based on need as per requirement.