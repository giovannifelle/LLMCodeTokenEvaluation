
// deepseek-coder_1_3b CODE

public class Main {    
    public static void binary_search(int arr[], int x) {  
        
        int start = 0;     
        int end = arr.length - 1;         
        
       while (start <= end){             
            
             int middleIndex=(start+end)/2 ;   
              
                if(arr[middleIndex]==x) {  
                    System.out.println("Element found at position: " + ((middleIndex + 1)));
                      return;
                }              if(arr[middleIndex]<x) {              
                    start = middleIndex+1 ;                  
            } else{                           end= middleIndex -1;}          }       System.out.println("Element not present in array");   return;}}


// qwen3_1_7b CODE
public class BinarySearch {
    public static int binarySearch(int[] array, int left, int right) {
        while (left <= right) {
            int mid = left + (right - left) / 2;
            if (array[mid] == target) {
                return mid;
            } else if (array[mid] < target) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        return -1;
    }
}
// qwen3_8b CODE
public class BinarySearch {
    public static int search(int[] array, int target) {
        int left = 0;
        int right = array.length - 1;
        while (left <= right) {
            int mid = left + (right - left) / 2;
            if (array[mid] == target) {
                return mid;
            } else if (array[mid] < target) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        return -1;
    }
}
// gemma_7b CODE

public class BinarySearch {

    public static int search(int[] arr, int target) {
        int low = 0;
        int high = arr.length - 1;

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
}

// qwen2_5-coder_3b CODE

int binarySearch(int[] nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (nums[mid] == target) {
            return mid;
        } else if (nums[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    return -1;
}

// qwen2_5-coder_7b CODE

public class BinarySearch {
    public static int search(int[] arr, int target) {
        int left = 0;
        int right = arr.length - 1;
        
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
}

// deepseek-coder_6_7b CODE

public class BinarySearch {
    int binarySearch(int arr[], int low, int high, int x) {
        if (high >= low) {
            int mid = low + (high - low) / 2;
  
            
            if (arr[mid] == x) return mid;
  
             
            if (arr[mid] > x) return binarySearch(arr, low, mid - 1, x);
  
            
            return binarySearch(arr, mid + 1, high, x);
        }
  
        
        return -1;
    }
}

// gemma_2b CODE

public class BinarySearch {

    public static int binarySearch(int[] arr, int target) {
        int left = 0;
        int right = arr.length;

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
}
