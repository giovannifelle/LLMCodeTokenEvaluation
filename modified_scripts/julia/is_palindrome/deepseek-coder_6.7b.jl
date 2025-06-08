Sure, here is the source code for an is_palindrome algorithm in Julia without comments, explanation, docstring, and any markdown formatting:

```julia
function is_palindrome(s::String)
    len = length(s)
    for i = 1:len ÷ 2
        if s[i] != s[len - i + 1]
            return false
        end
    end
    return true
end
```

This code defines a function `is_palindrome` which takes as input a string `s` and returns `true` if it is a palindrome, meaning it reads the same forwards and backwards. It does this by comparing each character with its corresponding character from the end of the string. If all these pairs match, the function returns `true`; otherwise, it returns `false`.