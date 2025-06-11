
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
