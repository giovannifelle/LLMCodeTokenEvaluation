```r
is_palindrome <- function(x) {
  x <- tolower(gsub("[^a-z0-9]", "", x))
  rev_x <- paste(rev(unlist(strsplit(x, ""))), collapse = "")
  identical(x, rev_x)
}
```