```r
is_palindrome <- function(x) {
  str_x <- as.character(x)
  n <- length(str_x)
  for (i in 1:(n/2)) {
    if (str_x[i] != str_x[n-i+1]) return(FALSE)
  }
  TRUE
}
```