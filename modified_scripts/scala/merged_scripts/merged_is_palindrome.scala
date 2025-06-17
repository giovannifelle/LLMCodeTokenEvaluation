
# qwen3_1_7b CODE
def isPalindrome(s: String): Boolean = {
  s == s.reverse
}
# deepseek-coder_6_7b CODE

def is_palindrome(s: String): Boolean = {
    val reversed = s.reverse
    if (s == reversed) true else false
}

# qwen2_5-coder_7b CODE

def is_palindrome(s: String): Boolean = {
  s == s.reverse
}

# gemma_2b CODE

def isPalindrome(str: String): Boolean = {
  str.equals(str.reverse)
}

# qwen3_8b CODE
def is_palindrome(s: String): Boolean = s == s.reverse
# gemma_7b CODE

def isPalindrome(str: String): Boolean = str == str.reverse

# deepseek-coder_1_3b CODE

def is_palindrome(x : Int) : Boolean = {  
    var y : Int = x  
    var rev : Int = 0 
    while(y > 1) { 
        rev = ((rev * 10) + y % 10); 
        y = y / 10;
    }  
     rev;  
}
# qwen2_5-coder_3b CODE

def is_palindrome(s: String): Boolean = s.toLowerCase == s.reverse
