fn is_palindrome(s: &str) -> bool {
    let mut left = 0;
    let mut right = s.len() - 1;
    while left < right {
        if s.as_bytes()[left] != s.as_bytes()[right] {
            return false;
        }
        left += 1;
        right -= 1;
    }
    true
}