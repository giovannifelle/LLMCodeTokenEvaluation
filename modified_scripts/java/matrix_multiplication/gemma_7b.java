```java
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
```