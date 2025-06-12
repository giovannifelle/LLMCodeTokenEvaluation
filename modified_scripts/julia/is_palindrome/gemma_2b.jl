function is_palindrome(string)
    n = length(string)
    center = floor(n/2)
    for i = 1:n
        if string[i] != string[n - i]
            return(false)
    end
    return(true)
end
