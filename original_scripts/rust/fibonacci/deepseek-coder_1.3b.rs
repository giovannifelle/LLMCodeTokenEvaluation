```rust
pub fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n-1) + fibonacci(n-2), // recursive case. The problem is solved by breaking down into smaller problems in the following way:  Fib of (N - 1) = f_i + 0 and then add it to return n
    }  
}    
```     
This code defines a function fibonacci that calculates the Nth number from an array representing each row on this page. The recursive case is implemented as explained above, breaking down problem into smaller subproblems until base cases are reached and solutions to these problems then combine in order according their original sequence (as determined by match statement).