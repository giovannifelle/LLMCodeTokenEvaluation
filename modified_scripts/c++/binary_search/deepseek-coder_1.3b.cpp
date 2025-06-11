
int binary_search(vector<T>& arr, T target) {
    int left = 0;
    int right = (int)(arr.size() - 1); 
    while (left <= right) {  
        int mid = left + ((right - left) >> 1);  
        if (arr[mid] == target){    return mid; } 
        else if (arr[mid] < target){   left = mid + 1; } 
        else {                          right = mid - 1;}   
    }                                   return -1;  
} 
