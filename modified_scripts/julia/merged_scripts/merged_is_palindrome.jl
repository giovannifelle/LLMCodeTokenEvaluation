
# qwen3_1_7b CODE
function is_palindrome(s::String)
    return s == reverse(s)
end
# qwen2_5-coder_7b CODE

function is_palindrome(s::String)::Bool
    n = length(s)
    for i in 1:div(n,2)
        if s[i] != s[n-i+1]
            return false
        end
    end
    return true
end

# qwen3_8b CODE
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
# gemma_2b CODE
function is_palindrome(string)
    n = length(string)
    center = floor(n/2)
    for i = 1:n
        if string[i] != string[n - i]
            return(false)
    end
    return(true)
end

# deepseek-coder_1_3b CODE

function is_palindrome(s)
    length = div(length(s),2 ) 
    
    i = 1           
                     
    j = length       
    
    
    t = ""             
    
    while i <= j
        if s[i] != s[j]   
            return false    
        else                
            i += 1          
            j -= 1          
        end               
     end                

# gemma_7b CODE
function is_palindrome(str)
    str = lower(strip(str))
    return str == rev(str)
end

# deepseek-coder_6_7b CODE

function is_palindrome(s::String)
    len = length(s)
    for i = 1:len ÷ 2
        if s[i] != s[len - i + 1]
            return false
        end
    end
    return true
end

# qwen2_5-coder_3b CODE

function is_palindrome(s::String) = s == reverse(s)
