```cpp
#include <vector>
#include <algorithm>

template <typename T>
void binary_search(std::vector<T>& arr, T target) {
    size_t left = 0;
    size_t right = arr.size();
    
    while (left < right) {
        size_t mid = left + (right - left) / 2;
        if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    
    if (left < arr.size() && arr[left] == target) {
        return;
    }
}
```