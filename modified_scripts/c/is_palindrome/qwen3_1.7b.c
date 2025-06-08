
int is_palindrome(int n) {
    int temp, reversed = 0;
    while (n > 0) {
        temp = n % 10;
        reversed = reversed * 10 + temp;
        n /= 10;
    }
    return reversed == n;
}