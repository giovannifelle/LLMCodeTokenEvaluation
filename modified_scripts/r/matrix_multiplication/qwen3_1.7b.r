```cpp
void matrixMultiplication(int* a, int* b, int* c, int rowsA, int colsA, int rowsB) {
    for (int i = 0; i < rowsA; i++) {
        for (int j = 0; j < colsA; j++) {
            int sum = 0;
            for (int k = 0; k < rowsB; k++) {
                sum += a[i * rowsB + k] * b[j * colsB + k];
            }
            c[i * colsB + j] = sum;
        }
    }
}
```