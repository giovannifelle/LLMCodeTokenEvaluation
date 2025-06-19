
# gemma_7b CODE

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

# deepseek-coder_6_7b CODE

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
# qwen2_5-coder_3b CODE

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

# deepseek-coder_1_3b CODE

pub fn matrix_multiplication(a: &[Vec<f32>], b: Vec<Vec<f32>>) -> Result<MatrixMultiplicationResult, String> {    
    let (rows1, cols0) = a.iter().fold((0usize, 0), |(count, count_inner), _| (count+1, *count_inner));   
                                                                                            if !b[0].is_empty() {        # Otherwise the number column mismatch.      return Err("Number Column Mismatched".to_string());  }     let cols1 = b[0].len();   // calculate rows in first matrix and total columns of second one respectively    match a[rows][*cols]*{       case [Some(x), Some(y)]: {         return Ok((a, x as f32 * y));        }                                   #  default:             break;      };     Err("Matrix Multiplication not possible".to_string())
# qwen3_1_7b CODE
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
# qwen2_5-coder_7b CODE

fn matrix_multiplication(a: &Vec<Vec<i32>>, b: &Vec<Vec<i32>>) -> Vec<Vec<i32>> {
    let rows_a = a.len();
    let cols_a = a[0].len();
    let rows_b = b.len();
    let cols_b = b[0].len();

    assert_eq!(cols_a, rows_b);

    let mut result = vec![vec![0; cols_b]; rows_a];

    for i in 0..rows_a {
        for j in 0..cols_b {
            for k in 0..cols_a {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }

    result
}

# qwen3_8b CODE
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
# gemma_2b CODE

fn matrix_multiplication(matrix1: [f32; 3], matrix2: [f32; 3]) -> [f32; 3] {
    
    let mut result_matrix = [0.0; 3];

    
    for i in 0..3 {
      
        for j in 0..3 {
      
            let product = matrix1[i] * matrix2[j];

      
            result_matrix[i][j] += product;
        }
    }

   
    result_matrix
}
