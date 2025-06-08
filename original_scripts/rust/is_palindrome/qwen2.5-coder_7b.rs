```rust
fn is_palindrome(s: &str) -> bool {
    let mut chars = s.chars();
    while let (Some(f), Some(l)) = (chars.next(), chars.next_back()) {
        if f != l {
            return false;
        }
    }
    true
}
```