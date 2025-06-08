Sure, here is the source code for a palindrome checking algorithm in C without any comments:

```c
int is_palindrome(char *str) {
    int start = 0;
    int end = strlen(str) - 1;
    
    while (start < end) {
        if (str[start] != str[end]) {
            return 0; // Not a palindrome
        }
        
        start++;
        end--;
    }
    
    return 1; // Is a palindrome
}
```
This function takes a pointer to a string as its argument and returns `0` if the string is not a palindrome and `1` if it is. It does this by checking each character in the string against its corresponding character from the end of the string, going towards the center. If any pair of characters doesn't match, it immediately returns `0`. If it gets through all pairs without finding a mismatch, it returns `1`.