fn matrix_mult(a: &[Vec<i32>, b: &[Vec<i32>]) -> Vec<Vec<i32> > {
    let rows_a = a.len();
    let cols_a = a[0].len();
    let rows_b = b.len();
    let cols_b = b[0].len();

    let mut result = vec![vec![]; rows_a];

    for i in 0..rows_a {
        for j in 0..cols_b {
            let mut val = 0;
            for k in 0..cols_a {
                val += a[i][k] * b[k][j];
            }
            result[i][j] = val;
        }
    }

    result
}