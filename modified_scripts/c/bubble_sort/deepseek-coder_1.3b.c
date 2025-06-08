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