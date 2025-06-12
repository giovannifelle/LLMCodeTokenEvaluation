
fn is_palindrome(s: &str) -> bool {
    let chars: Vec<char> = s.chars().collect();
    chars.iter().eq(chars.iter().rev())
}
