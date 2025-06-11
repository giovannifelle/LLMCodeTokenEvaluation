

int** multiplyMatrices(int** A, int** B, int rowsA, int colsA, int colsB) {
    if (colsA != rowsB) return nullptr; // Check for valid matrix multiplication dimensions
    
    int** result = new int*[rowsA];
    for (int i = 0; i < rowsA; ++i) {
        result[i] = new int[colsB];
        for (int j = 0; j < colsB; ++j) {
            result[i][j] = 0;
            for (int k = 0; k < colsA; ++k) {
                result[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    return result;
}