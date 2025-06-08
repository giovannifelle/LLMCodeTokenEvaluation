```cpp
bool is_palindrome(const std::string& s) {
    for (size_t i = 0; i < s.size() / 2; ++i) {
        if (s[i] != s[s.size() - 1 - i]) {
            return false;
        }
    }
    return true;
}
```