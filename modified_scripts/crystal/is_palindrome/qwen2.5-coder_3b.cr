```crystal
def is_palindrome?(str)
  str == str.reverse
end
```

**Explanation**: This function takes a string `str` as an argument and checks if it is equal to its reverse (`str.reverse`). If they are the same, the function returns `true`, indicating that the string is a palindrome; otherwise, it returns `false`.