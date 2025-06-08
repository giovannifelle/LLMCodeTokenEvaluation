```crystal
fn is_palindrome(str: String) -> Bool {
  str.chars.reverse == str.chars
}
```