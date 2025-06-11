
is_palindrome <- function(str) {
    str = gsub("[^[:alnum:]]", "", tolower(str))
    return(identical(str, rev(str)))
}
