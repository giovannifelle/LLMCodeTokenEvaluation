```java
int binarySearch(int[] nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2; // Calculate the middle index to avoid potential overflow

        if (nums[mid] == target) {
            return mid; // Return the index if the element is found
        } else if (nums[mid] < target) {
            left = mid + 1; // If the target is greater, move the left pointer to mid + 1
        } else {
            right = mid - 1; // If the target is smaller, move the right pointer to mid - 1
        }
    }

    return -1; // Return -1 if the element is not found in the array
}
```