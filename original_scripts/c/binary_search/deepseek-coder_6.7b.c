Here is a simple binary search algorithm in C:

```c
int binary_search(int arr[], int start, int end, int x) {
    if (end >= start) {
        int mid = start + (end - start) / 2;
        if (arr[mid] == x) return mid;
        if (arr[mid] > x) return binary_search(arr, start, mid-1, x);
        return binary_search(arr, mid+1, end, x);
    }
    return -1;
}
```
This function takes a sorted array `arr[]` of n elements and an element `x` to be searched. It returns the index of `x` if it is present in `arr[]`, else it returns -1. The assumption of this code is that the input array `arr[]` is already sorted by the time we call this function.