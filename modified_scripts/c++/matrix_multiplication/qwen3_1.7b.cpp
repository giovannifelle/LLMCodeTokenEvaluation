#include <vector>

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