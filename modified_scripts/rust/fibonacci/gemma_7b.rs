
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
