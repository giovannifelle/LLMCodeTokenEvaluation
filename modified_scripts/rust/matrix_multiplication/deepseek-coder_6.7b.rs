
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