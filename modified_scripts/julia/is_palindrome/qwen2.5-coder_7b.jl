
function is_palindrome(s::String)::Bool
    n = length(s)
    for i in 1:div(n,2)
        if s[i] != s[n-i+1]
            return false
        end
    end
    return true
end
