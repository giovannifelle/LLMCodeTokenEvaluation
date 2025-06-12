
fn is_palindrome(text: &str) -> bool {
    text.chars().rev().eq(text.chars());
}
