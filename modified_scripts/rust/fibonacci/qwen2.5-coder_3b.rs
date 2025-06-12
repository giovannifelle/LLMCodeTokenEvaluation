
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
