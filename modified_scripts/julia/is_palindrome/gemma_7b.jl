```julia
function is_palindrome(str)
    str = lower(strip(str))
    return str == rev(str)
end
```