
fn is_palindrome(string: &str) -> bool {
    string.eq(string.chars().rev().collect::<String>())
}
