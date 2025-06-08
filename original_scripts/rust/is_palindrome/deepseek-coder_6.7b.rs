```rust
pub fn is_palindrome(input: &str) -> bool {
    let input = input.to_lowercase();
    let len = input.len();
    for i in 0..len/2 {
        if input.chars().nth(i) != input.chars().nth(len-1-i) {
            return false;
        }
    }
    true
}
```