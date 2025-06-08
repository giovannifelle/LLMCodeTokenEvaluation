```rust
pub fn is_palindrome(input : &str) -> bool {
    let input = String::from(input); // Convert the string to a `String` for easier manipulation and comparison with reversed version of original strings 
    
   if !input.is_empty() && (&mut '0'.to_string()) == &rev(&input) {} else { false }     
}   
```