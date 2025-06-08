fn matrix_mult(a: &[Vec<i32>], b: &[Vec<i32>]) -> Vec<Vec<i32>> {
    let rows = a.len();
    let cols = b[0].len();
    let mut result = vec![vec![0; cols]; rows];
    for i in 0..rows {
        for j in 0..cols {
            for k in 0..a[0].len() {
                result[i][j] += a[i][k] * b[k][j]
            }
        }
    }
    result
}