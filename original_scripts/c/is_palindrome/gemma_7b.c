```c
bool is_palindrome(char *str) {
    int len = strlen(str) - 1;
    for (int i = 0; i < len / 2; i++) {
        if (str[i] != str[len - i - 1]) {
            return false;
        }
    }
    return true;
}
```