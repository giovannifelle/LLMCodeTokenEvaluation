int binary_search(int arr[], int start, int end, int x) {
    if (end >= start) {
        int mid = start + (end - start) / 2;
        if (arr[mid] == x) return mid;
        if (arr[mid] > x) return binary_search(arr, start, mid-1, x);
        return binary_search(arr, mid+1, end, x);
    }
    return -1;
}
