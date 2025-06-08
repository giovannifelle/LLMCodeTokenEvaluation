
void matrix_multiplication(int r1, int c1, float **A, int r2, int c2, float **B, float ***result) {
    if (c1 != r2) return;
    
    *result = (float**)malloc(r1 * sizeof(float*));
    for(int i = 0; i < r1; ++i)
        (*result)[i] = (float*)malloc(c2 * sizeof(float));
        
    for(int i=0; i<r1; i++){
    	for(int j=0; j<c2; j++){
    		(*result)[i][j] = 0.0f; 
    		for (int k = 0 ; k < c1 ; k++) {
        		(*result)[i][j] += A[i][k] * B[k][j];
     		 }
   	 	}  	   	
  	}
}
