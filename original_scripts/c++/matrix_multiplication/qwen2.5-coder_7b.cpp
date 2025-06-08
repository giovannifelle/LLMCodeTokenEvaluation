```cpp
#include <iostream>
using namespace std;

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
```