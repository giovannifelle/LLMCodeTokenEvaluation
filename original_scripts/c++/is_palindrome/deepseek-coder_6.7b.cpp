Sure, here is the source code for an `is_palindrome` algorithm in C++ without comments and explanations:

```cpp
bool is_palindrome(string s) {
    int l = 0;
    int r = s.length() - 1;
    
    while (l < r) {
        if (s[l] != s[r]) {
            return false;
        }
        ++l;
        --r;
    }
    return true;
}
```