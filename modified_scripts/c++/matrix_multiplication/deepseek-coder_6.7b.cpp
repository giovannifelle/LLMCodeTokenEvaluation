Sure, here is the source code for matrix multiplication algorithm in C++ without comments or explanations:

```cpp
#include <vector>
using namespace std;

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
```
Please remember to link this function in your main function with the required parameters and handle exceptions as per your program's requirement. Also, ensure that the dimensions of the input matrices are suitable for matrix multiplication (i.e., number of columns in first matrix equals number of rows in second).