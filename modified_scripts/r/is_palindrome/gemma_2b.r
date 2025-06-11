
is_palindrome <- function(text) {
  text_reversed <- reverse(text)
  return(text == text_reversed)
}
