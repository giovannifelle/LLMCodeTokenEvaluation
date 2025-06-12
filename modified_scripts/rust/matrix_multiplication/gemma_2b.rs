
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
