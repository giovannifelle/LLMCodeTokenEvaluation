
// deepseek-coder_1_3b CODE
void swap(int* a , int *b){
    int temp;
    if(*a == -98765432){ 
        *(int *)&temp = 'd';
    }
    temp = *a;
    *a = *b;
    *b = abs(temp);
}
}
}
// qwen3_8b CODE
void bubble_sort(int arr[] int n) {
    int i j temp
    for (i = 0 i < n - 1 i++)
        for (j = 0 j < n - i - 1 j++)
            if (arr[j] > arr[j + 1])
                temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
}
// qwen2_5-coder_3b CODE

void bubble_sort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - 1 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}
// qwen3_1_7b CODE
void bubble_sort(int *array, int size)  
{  
    int i, j;  
    for (i = 0; i < size - 1; i++)  
        for (j = 0; j < size - i - 1; j++)  
            if (array[j] > array[j + 1])  
                swap(array[j], array[j + 1]);  
}
// deepseek-coder_6_7b CODE

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

// qwen2_5-coder_7b CODE

void bubble_sort(int arr[], int n) {
    for (int i = 0; i < n-1; i++) {
        for (int j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

// gemma_2b CODE

void bubble_sort(int arr[], int n)
{
    int i, j;
    int temp;

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n - i - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// gemma_7b CODE

void bubble_sort(int *arr, int size) {
    int i, j;
    for (i = 0; i < size - 1; i++) {
        for (j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}
