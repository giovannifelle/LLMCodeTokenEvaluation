
// deepseek-coder_1_3b CODE
int binary_search(int arr[], int start, int end, int x) {  
    if (end >= start) {  
        int mid = start + (end - start) / 2;  
        
        if (arr[mid] < x ) {  
            return binary_search( arr , mid + 1, end, x );      
        }         
 
        else if (arr[mid] > x) {    
             return binary_search( arr, start, mid - 1, x);     
         }   
         
        else{            
              return mid;     
         }     
    }         
    return -1 ;        
}            

// qwen3_8b CODE
int binary_search(int arr[], int size, int target) {
    int left = 0;
    int right = size - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (arr[mid] == target) {
            return mid;
        } else if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return -1;
}
// qwen2_5-coder_3b CODE


int binary_search(int arr[], int size, int target) {
    int left = 0;
    int right = size - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (arr[mid] == target) {
            return mid;
        } else if (arr[mid] < target) {
            left = mid + 1; 
        } else {
            right = mid - 1;
        }
    }

    return -1;
}

// qwen3_1_7b CODE
int binary_search(int arr[], int left, int right, int key) {
    while (left <= right) {
        int mid = (left + right) / 2;
        if (arr[mid] == key)
            return mid;
        else if (arr[mid] < key)
            left = mid + 1;
        else
            right = mid - 1;
    }
    return -1;
}
// deepseek-coder_6_7b CODE
int binary_search(int arr[], int start, int end, int x) {
    if (end >= start) {
        int mid = start + (end - start) / 2;
        if (arr[mid] == x) return mid;
        if (arr[mid] > x) return binary_search(arr, start, mid-1, x);
        return binary_search(arr, mid+1, end, x);
    }
    return -1;
}

// qwen2_5-coder_7b CODE

int binary_search(int arr[], int l, int r, int x) {
    if (r >= l) {
        int mid = l + (r - l) / 2;
        if (arr[mid] == x)
            return mid;
        if (arr[mid] > x)
            return binary_search(arr, l, mid - 1, x);
        return binary_search(arr, mid + 1, r, x);
    }
    return -1;
}

// gemma_2b CODE
int binary_search(int arr[], int n, int target) {
  int left = 0;
  int right = n - 1;

  while (left <= right) {
    int mid = (left + right) / 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}

// gemma_7b CODE

int binary_search(int arr[], int size, int target) {
  int low = 0;
  int high = size - 1;

  while (low <= high) {
    int mid = (low + high) / 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}
