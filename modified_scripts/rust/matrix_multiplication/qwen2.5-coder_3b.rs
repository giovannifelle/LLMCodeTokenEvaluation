```rust
fn matrix_multiply(a: &[[i32; 4]; 4], b: &[[i32; 4]; 4]) -> [[i32; 4]; 4] {
    let mut result = [[0; 4]; 4];
    for i in 0..4 {
        for j in 0..4 {
            for k in 0..4 {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    result
}
```