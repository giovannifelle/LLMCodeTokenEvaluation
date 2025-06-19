
# gemma_7b CODE

fn is_palindrome(string: &str) -> bool {
    string.eq(string.chars().rev().collect::<String>())
}

# deepseek-coder_6_7b CODE
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

# qwen2_5-coder_3b CODE

fn is_palindrome(s: &str) -> bool {
    let chars: Vec<char> = s.chars().collect();
    chars.iter().eq(chars.iter().rev())
}

# deepseek-coder_1_3b CODE
pub fn is_palindrome(input : &str) -> bool {
    let input = String::from(input); 
    
   if !input.is_empty() && (&mut '0'.to_string()) == &rev(&input) {} else { false }     
}   

# qwen3_1_7b CODE
fn is_palindrome(s: &str) -> bool {
    let mut chars: Vec<char> = s.chars().collect();
    let mut left = 0;
    let mut right = chars.len() - 1;

    while left < right {
        if chars[left] != chars[right] {
            return false;
        }
        left += 1;
        right -= 1;
    }
    true
}
# qwen2_5-coder_7b CODE

fn is_palindrome(s: &str) -> bool {
    let mut chars = s.chars();
    while let (Some(f), Some(l)) = (chars.next(), chars.next_back()) {
        if f != l {
            return false;
        }
    }
    true
}

# qwen3_8b CODE
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
# gemma_2b CODE

fn is_palindrome(text: &str) -> bool {
    text.chars().rev().eq(text.chars());
}
