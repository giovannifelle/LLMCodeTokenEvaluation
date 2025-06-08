is_palindrome <- function(x) {
  as.character(x) == rev(strsplit(as.character(x), "")[[1]])
}