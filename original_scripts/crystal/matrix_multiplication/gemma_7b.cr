```crystal
fn matrix_multiplication(
    matrix1: Vec<Vec<Fix64>>,
    matrix2: Vec<Vec<Fix64>>,
) -> Vec<Vec<Fix64>> {
    let m1, n1 = matrix1.size
    let m2, n2 = matrix2.size

    if n1 != m2 {
        panic!("Matrices are not compatible for multiplication")
    }

    let result = vec![vec![0] * n2] * m1

    for i in 0...m1
    for j in 0...n2
    for k in 0...n1
        result[i][j] += matrix1[i][k] * matrix2[k][j]

    result
}
```