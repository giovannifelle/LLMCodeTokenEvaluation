```cpp
template<typename T>
int binary_search(T arr[], int start, int end, T target) {
    if (end >= start) {
        int mid = start + (end - start) / 2;
        
        if (arr[mid] == target) return mid;
  
        if (arr[mid] > target) return binary_search(arr, start, mid - 1, target);
  
        return binary_search(arr, mid + 1, end, target);
    }
    
    return -1;
}
```