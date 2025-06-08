```c++
int** matrix_multiplication(int** a, int** b, int m, int n, int p) {
    int** c = new int*[m];
    for (int i = 0; i < m; ++i) {
        c[i] = new int[p];
    }
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < p; ++j) {
            for (int k = 0; k < n; ++k) {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    return c;
}
```