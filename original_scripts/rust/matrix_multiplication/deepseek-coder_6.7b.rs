Sure, here is the source code for a simple matrix multiplication algorithm in Rust without comments and documentation:

```rust
pub fn matrix_multiplication(a: &Vec<Vec<f64>>, b: &Vec<Vec<f64>>) -> Vec<Vec<f64>> {
    let a_rows = a.len();
    let a_cols = a[0].len();
    let b_cols = b[0].len();
    
    let mut result: Vec<Vec<f64>> = vec![vec![(0.0; b_cols)]; a_rows];
    
    for i in 0..a_rows {
        for j in 0..b_cols {
            for k in 0..a_cols {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    
    result
}
```
This code defines the `matrix_multiplication` function which multiplies two matrices and returns the resulting matrix. It assumes that the input matrices are of valid dimensions for multiplication (i.e., the number of columns in the first matrix is equal to the number of rows in the second). The type of elements in the matrices is f64, but you can change this to any numeric type that implements the necessary traits.