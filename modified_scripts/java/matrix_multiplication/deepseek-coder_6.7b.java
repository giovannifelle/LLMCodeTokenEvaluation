Here is the pure source code for a simple matrix multiplication algorithm in Java:

```java
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
```

This is a simple class containing the main method for matrix multiplication. It takes in two 2D arrays as input (matrices) and returns a new 2D array representing their product. The `multiply` function multiplies these matrices together according to standard rules of matrix multiplication, returning `null` if the matrices cannot be multiplied due to dimension mismatch.