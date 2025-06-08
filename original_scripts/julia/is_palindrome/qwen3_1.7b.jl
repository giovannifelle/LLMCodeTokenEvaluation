function is_palindrome(s::String)
    return s == reverse(s)
end