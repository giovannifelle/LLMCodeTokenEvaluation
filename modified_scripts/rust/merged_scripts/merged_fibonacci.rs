
# gemma_7b CODE

fn fibonacci(n: usize) -> usize {
    let mut a = 0usize;
    let mut b = 1usize;
    for _ in 0..n {
        let c = a + b;
        a = b;
        b = c;
    }
    b
}

# deepseek-coder_6_7b CODE
fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}
# qwen2_5-coder_3b CODE

fn fib(n: u32) -> u32 {
    if n <= 1 { return n; }
    let (mut a, mut b) = (0, 1);
    for _ in 2..=n {
        let next = a + b;
        a = b;
        b = next;
    }
    b
}

# deepseek-coder_1_3b CODE

pub fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n-1) + fibonacci(n-2), 
    }  
}    

# qwen3_1_7b CODE
fn fibonacci(n: usize) -> usize {
    if n == 0 {
        0
    } else if n == 1 {
        1
    } else {
        fibonacci(n - 1) + fibonacci(n - 2)
    }
}
# qwen2_5-coder_7b CODE
fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

# qwen3_8b CODE
fn fibonacci(n: u64) -> u64 {
    if n == 0 {
        return 0;
    }
    if n == 1 {
        return 1;
    }
    fibonacci(n - 1) + fibonacci(n - 2)
}
# gemma_2b CODE

fn fibonacci(n: u32) -> u32 {
    if n == 0 {
        return 0;
    } else if n == 1 {
        return 1;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}
