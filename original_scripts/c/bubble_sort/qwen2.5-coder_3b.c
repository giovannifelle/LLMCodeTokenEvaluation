Certainly! Here is the pure C implementation of the bubble sort algorithm:

```c
void bubble_sort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - 1 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap arr[j] and arr[j + 1]
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}
```

This code defines a function `bubble_sort` that sorts an array of integers using the bubble sort algorithm. The outer loop iterates over each element in the array, and the inner loop compares adjacent elements and swaps them if they are in the wrong order. This process is repeated until the array is sorted.