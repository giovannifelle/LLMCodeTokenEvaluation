void bubble_sort(int *array, int size)  
{  
    int i, j;  
    for (i = 0; i < size - 1; i++)  
        for (j = 0; j < size - i - 1; j++)  
            if (array[j] > array[j + 1])  
                swap(array[j], array[j + 1]);  
}