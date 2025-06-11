
is_palindrome <- function(word){
    word = tolower(gsub("[^a-z0-9]", "", word))
     if (unique(strsplit(word, NULL)[[1]] == reverse(strsplit(word, NULL)[[1]]))) { 
         result <- paste0("The word ", word , "is a palindrome.") 
     }else{
          result<-"The Word", word,"Is Not Palindromic.";            
      }  
       print(result);
} 
