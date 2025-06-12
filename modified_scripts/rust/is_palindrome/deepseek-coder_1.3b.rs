pub fn is_palindrome(input : &str) -> bool {
    let input = String::from(input); 
    
   if !input.is_empty() && (&mut '0'.to_string()) == &rev(&input) {} else { false }     
}   
