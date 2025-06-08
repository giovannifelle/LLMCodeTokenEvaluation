```rust
fn matrix_multiplication(
    matrix1: Vec<Vec<f64>>,
    matrix2: Vec<Vec<f64>>,
) -> Vec<Vec<f64>> {
    let m1 = matrix1.len();
    let n1 = matrix1[0].len();
    let m2 = matrix2.len();
    let n2 = matrix2[0].len();

    if n1 != m2 {
        panic!("Matrices are not compatible for multiplication");
    }

    let mut result = vec![vec![0.0; n2]; m1];

    for i in 0..m1 {
        for j in 0..n2 {
            for k in 0..n1 {
                result[i][j] += matrix1[i][k] * matrix2[k][j];
            }
        }
    }

    result
}
```