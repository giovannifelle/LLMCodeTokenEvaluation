
int matrix_multiplication(const int* A, const size_t nA, const int m1a,
                         const int *B, const size_t m2b,
                         int* C){
    int sum = 0;
    for(int i = 0; i < nA ; ++i){ 
        for(int j = 0; j < m2b ; ++j){ 
            for(int k = 0; k < m1a ; ++k){ 