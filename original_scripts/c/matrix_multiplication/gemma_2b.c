```c
int matrix_multiplication(int matrix1[2][3], int matrix2[3][4]) {
    int result[2][4];
    int i, j, k;

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 4; j++) {
            result[i][j] = 0;
            for (k = 0; k < 3; k++) {
                result[i][j] += matrix1[i][k] * matrix2[k][j];
            }
        }
    }

    return result;
}
```