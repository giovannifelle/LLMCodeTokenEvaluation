
function is_palindrome(s::String)
    len = length(s)
    for i = 1:len ÷ 2
        if s[i] != s[len - i + 1]
            return false
        end
    end
    return true
end
