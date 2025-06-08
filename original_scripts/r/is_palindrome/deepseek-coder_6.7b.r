Sure, here is the source code for an R function that checks if a string is a palindrome:

```R
is_palindrome <- function(str) {
    str = gsub("[^[:alnum:]]", "", tolower(str))
    return(identical(str, rev(str)))
}
```
This code creates a R function called `is_palindrome` that takes one argument, `str`. It first removes any non-alphabetic characters from the input string and converts it to lowercase using the `tolower()` and `gsub()` functions. Then it checks if the original and reversed strings are identical, which is a common property of palindromes. If they are, it returns `TRUE`; otherwise, it returns `FALSE`.