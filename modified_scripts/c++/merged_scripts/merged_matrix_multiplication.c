
// deepseek-coder_1_3b CODE

int matrix_multiplication(const int* A, const size_t nA, const int m1a,
                         const int *B, const size_t m2b,
                         int* C){
    int sum = 0;
    for(int i = 0; i < nA ; ++i){ 
        for(int j = 0; j < m2b ; ++j){ 
            for(int k = 0; k < m1a ; ++k){ 
// qwen2_5-coder_3b CODE


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
// deepseek-coder_6_7b CODE

vector<vector<int>> matrix_multiplication(vector<vector<int>>& A, vector<vector<int>>& B) {
    int n = A.size();
    vector<vector<int>> result(n, vector<int>(n));
    
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            for (int k = 0; k < n; k++) {
                result[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    
    return result;
}
// qwen3_8b CODE


int main() {
    int rows1, cols1, rows2, cols2;
    cin >> rows1 >> cols1 >> rows2 >> cols2;
    if (cols1 != rows2) {
        cout << "Matrix multiplication not possible." << endl;
        return 0;
    }
    vector<vector<int>> mat1(rows1, vector<int>(cols1));
    vector<vector<int>> mat2(rows2, vector<int>(cols2));
    for (int i = 0; i < rows1; ++i) {
        for (int j = 0; j < cols1; ++j) {
            cin >> mat1[i][j];
        }
    }
    for (int i = 0; i < rows2; ++i) {
        for (int j = 0; j < cols2; ++j) {
            cin >> mat2[i][j];
        }
    }
    vector<vector<int>> result(rows1, vector<int>(cols2, 0));
    for (int i = 0; i < rows1; ++i) {
        for (int j = 0; j < cols2; ++j) {
            for (int k = 0; k < cols1; ++k) {
                result[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }
    for (int i = 0; i < rows1; ++i) {
        for (int j = 0; j < cols2; ++j) {
            cout << result[i][j] << " ";
        }
        cout << endl;
    }
    return 0;
}
// gemma_2b CODE

void matrix_multiplication(int a[3][3], int b[3][3], int c[3][3]) {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            c[i][j] = 0;
            for (int k = 0; k < 3; k++) {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}
// gemma_7b CODE

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
// qwen2_5-coder_7b CODE

int main() {
    int m1[2][3] = {{1, 2, 3}, {4, 5, 6}};
    int m2[3][2] = {{7, 8}, {9, 10}, {11, 12}};
    int result[2][2];

    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            result[i][j] = 0;
            for (int k = 0; k < 3; ++k) {
                result[i][j] += m1[i][k] * m2[k][j];
            }
        }
    }

    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            cout << result[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
// qwen3_1_7b CODE

std::vector<std::vector<int>> matrix_mult(const std::vector<std::vector<int>>& a, const std::vector<std::vector<int>>& b) {
    int rows_a = a.size(), cols_a = a[0].size(), rows_b = b.size(), cols_b = b[0].size();
    std::vector<std::vector<int>> result(rows_a, std::vector<int>(cols_b, 0));
    for (int i = 0; i < rows_a; i++) {
        for (int j = 0; j < cols_b; j++) {
            for (int k = 0; k < cols_a; k++) {
                result[i][j] += a[i][k] * b[k][j];
            }
        }
    }
    return result;
}