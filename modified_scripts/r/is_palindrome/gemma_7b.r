
is_palindrome <- function(string) {
  string <- tolower(gsub("\\s+", "", string))
  string == rev(string)
}
