
bool is_palindrome(string s) {
  int n = s.length();
  int i = 0;
  int j = n - 1;

  while (i < n && j > 0) {
    if (s[i] != s[j]) {
      return false;
    }
    i++;
    j--;
  }

  return true;
}