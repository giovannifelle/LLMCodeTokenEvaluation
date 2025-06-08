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