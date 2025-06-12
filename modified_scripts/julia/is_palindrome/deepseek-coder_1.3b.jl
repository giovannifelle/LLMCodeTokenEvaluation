
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
