```
int is_palindrome(int *arr, int n) {
    for (int i = 0; i < n / 2; i++) {
        if (arr[i] != arr[n - 1 - i]) {
            return 0;
        }
    }
    return 1;
}
```