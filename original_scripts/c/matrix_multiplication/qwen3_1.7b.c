#include <stdio.h>

void matrix_multiply(int* a, int* b, int* c, int rows_a, int cols_a, int rows_b) {
    for (int i = 0; i < rows_a; i++) {
        for (int j = 0; j < cols_a; j++) {
            int sum = 0;
            for (int k = 0; k < rows_b; k++) {
                sum += a[i * rows_b + k] * b[j * rows_b + k];
            }
            c[i * cols_a + j] = sum;
        }
    }
}