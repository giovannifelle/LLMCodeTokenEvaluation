```java
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
```