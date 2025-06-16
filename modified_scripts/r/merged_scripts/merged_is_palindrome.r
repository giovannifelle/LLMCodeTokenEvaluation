
# qwen2_5-coder_3b CODE

is_palindrome <- function(x) {
  str_x <- as.character(x)
  n <- length(str_x)
  for (i in 1:(n/2)) {
    if (str_x[i] != str_x[n-i+1]) return(FALSE)
  }
  TRUE
}

# gemma_2b CODE

is_palindrome <- function(text) {
  text_reversed <- reverse(text)
  return(text == text_reversed)
}

# qwen3_8b CODE
is_palindrome <- function(x) {
  as.character(x) == rev(strsplit(as.character(x), "")[[1]])
}
# deepseek-coder_1_3b CODE

is_palindrome <- function(word){
    word = tolower(gsub("[^a-z0-9]", "", word))
     if (unique(strsplit(word, NULL)[[1]] == reverse(strsplit(word, NULL)[[1]]))) { 
         result <- paste0("The word ", word , "is a palindrome.") 
     }else{
          result<-"The Word", word,"Is Not Palindromic.";            
      }  
       print(result);
} 

# deepseek-coder_6_7b CODE

is_palindrome <- function(str) {
    str = gsub("[^[:alnum:]]", "", tolower(str))
    return(identical(str, rev(str)))
}

# qwen2_5-coder_7b CODE

is_palindrome <- function(x) {
  x <- tolower(gsub("[^a-z0-9]", "", x))
  rev_x <- paste(rev(unlist(strsplit(x, ""))), collapse = "")
  identical(x, rev_x)
}

# gemma_7b CODE

is_palindrome <- function(string) {
  string <- tolower(gsub("\\s+", "", string))
  string == rev(string)
}

# qwen3_1_7b CODE
