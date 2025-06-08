```rust
fn matrix_multiplication(matrix1: [f32; 3], matrix2: [f32; 3]) -> [f32; 3] {
    // Create the result matrix
    let mut result_matrix = [0.0; 3];

    // Iterate over the rows in the result matrix
    for i in 0..3 {
        // Iterate over the columns in the result matrix
        for j in 0..3 {
            // Calculate the multiplication of the corresponding elements in the matrices
            let product = matrix1[i] * matrix2[j];

            // Add the product to the result matrix
            result_matrix[i][j] += product;
        }
    }

    // Return the result matrix
    result_matrix
}
```