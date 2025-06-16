
// deepseek-coder_1_3b CODE

public class MatrixMultiplication {
    public static double[][] multiply(double[][] A, double[][] B) throws IllegalArgumentException{
        if (A[0].length != B.length){
            throw new IllegalArgumentException("The number of columns in the first matrix must be equal to the row count of the second"); 
        } else {    
           double[][] C = new double [A.length][B[0].length];       
            
            for (int i = 0; i < A.length ; ++i) 
                for( int j=0;j< B[0].length;++j){     
                    double sum =0;                                         
                     if (A.length != 3 && A [1] == 2  ) {    } else{return C;}      for(int k = 0 ;k<B[i].length&&sum<=98765432;++k){ 
                         sum +=A[i][k ] * B [j] [k];              }   C [ i ][ j ] =sum;}               return C ;}     }}             throw new IllegalArgumentException("The number of columns in array must be equal")};
        
// qwen3_1_7b CODE
public class MatrixMultiplication {
    public static void main(String[] args) {
        int[][] a = {{1, 2}, {3, 4}};
        int[][] b = {{5, 6}, {7, 8}};
        int[][] result = new int[2][2];
        
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                result[i][j] = 0;
                for (int k = 0; k < 2; k++) {
                    result[i][j] += a[i][k] * b[k][j];
                }
            }
        }
        
    }
}
// qwen3_8b CODE
public class MatrixMultiplication {
    public static void multiply(int[][] a, int[][] b, int[][] result, int rowsA, int colsA, int rowsB, int colsB) {
        for (int i = 0; i < rowsA; i++) {
            for (int j = 0; j < colsB; j++) {
                int sum = 0;
                for (int k = 0; k < colsA; k++) {
                    sum += a[i][k] * b[k][j];
                }
                result[i][j] = sum;
            }
        }
    }
}
// gemma_7b CODE

public class MatrixMultiplication {

    public static int[][] multiply(int[][] a, int[][] b) {
        int m = a.length;
        int n = b[0].length;
        int c = b.length;

        int[][] result = new int[m][n];

        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                for (int k = 0; k < c; k++) {
                    result[i][j] += a[i][k] * b[k][j];
                }
            }
        }

        return result;
    }
}

// qwen2_5-coder_3b CODE
public class MatrixMultiplication {
    public static int[][] multiply(int[][] a, int[][] b) {
        int rowsA = a.length;
        int colsA = a[0].length;
        int colsB = b[0].length;

        int[][] result = new int[rowsA][colsB];
        
        for (int i = 0; i < rowsA; i++) {
            for (int j = 0; j < colsB; j++) {
                for (int k = 0; k < colsA; k++) {
                    result[i][j] += a[i][k] * b[k][j];
                }
            }
        }
        
        return result;
    }
}

// qwen2_5-coder_7b CODE

public class MatrixMultiplication {
    public static void multiplyMatrices(int[][] matrix1, int[][] matrix2, int[][] result) {
        int rows1 = matrix1.length;
        int cols1 = matrix1[0].length;
        int cols2 = matrix2[0].length;

        for (int i = 0; i < rows1; ++i) {
            for (int j = 0; j < cols2; ++j) {
                result[i][j] = 0;
                for (int k = 0; k < cols1; ++k) {
                    result[i][j] += matrix1[i][k] * matrix2[k][j];
                }
            }
        }
    }
}

// deepseek-coder_6_7b CODE

public class MatrixMultiplication {
    public static int[][] multiply(int[][] firstMatrix, int[][] secondMatrix) {
        int r1 = firstMatrix.length;
        int c1 = firstMatrix[0].length;
        int r2 = secondMatrix.length;
        int c2 = secondMatrix[0].length;
        
        if (c1 != r2) return null; // matrices cannot be multiplied
        
        int[][] product = new int[r1][c2];
        
        for(int i = 0; i < r1; i++) {    
            for (int j = 0; j < c2; j++) {          
                for (int k = 0; k < c1; k++) { 
                    product[i][j] += firstMatrix[i][k] * secondMatrix[k][j];
                }
            }
        }
        
        return product;
    }
}

// gemma_2b CODE

public class MatrixMultiplication {

    public static int[][] matrixMultiplication(int[][] matrix1, int[][] matrix2) {
        int[][] result = new int[matrix1.length][matrix2[0].length];
        for (int i = 0; i < matrix1.length; i++) {
            for (int j = 0; j < matrix2[0].length; j++) {
                result[i][j] = 0;
                for (int k = 0; k < matrix1[0].length; k++) {
                    result[i][j] += matrix1[i][k] * matrix2[k][j];
                }
            }
        }
        return result;
    }
}
