Sure, here is the source code for a bubble sort algorithm in C without any comments:

```c
void BubbleSort(int arr[], int n) {
    int i, j;
    for (i = 0; i < n-1; i++)       
       for (j = 0; j < n-i-1; j++)  
           if (arr[j] > arr[j+1]) {
              int temp = arr[j];
              arr[j] = arr[j+1];
              arr[j+1] = temp;
           }
}
```