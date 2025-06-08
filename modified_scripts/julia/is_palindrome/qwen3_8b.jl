function is_palindrome(s)
    i = 1
    j = length(s)
    while i < j
        if s[i] != s[j]
            return false
        end
        i += 1
        j -= 1
    end
    return true
end