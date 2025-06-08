
int is_palindrome(char *str) {
    int start = 0;
    int end = strlen(str) - 1;
    
    while (start < end) {
        if (str[start] != str[end]) {
            return 0;
        }
        
        start++;
        end--;
    }
    
    return 1;
}