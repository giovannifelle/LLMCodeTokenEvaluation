

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