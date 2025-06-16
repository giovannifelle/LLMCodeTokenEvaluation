
# gemma_2b CODE

def is_palindrome(word):
    
    return word == word[::-1]

# qwen3_8b CODE
def is_palindrome(s):
    return s == s[::-1]
# deepseek-coder_1_3b CODE
def is_palindrome(string):
    length = 0
    while True:
        try:
            string[length]
        except IndexError:
            break
        length += 1
    return True

# qwen2_5-coder_3b CODE

def is_palindrome(s: str) -> bool:
    return s == s[::-1]

# qwen3_1_7b CODE
def is_palindrome(s):
    return s == s[::-1]
# qwen2_5-coder_7b CODE

def is_palindrome(s):
    return s == s[::-1]

# deepseek-coder_6_7b CODE

def is_palindrome(n):
    return str(n) == str(n)[::-1]

# gemma_7b CODE

def is_palindrome(string):
    return string == string[::-1]
