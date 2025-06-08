def multiply(matrix1, matrix2): 
    rows_A = len(matrix1)                 
    cols_B  =len(matrix2[0])   
    res = [[0]*cols_B for _ in range(rows_A)] 
    
      
    for i in range(rows_A):  
        for k in range(cols_B):  
            res[i][k] += matrix1[i][j] * matrix2[j][k]  if j=='all'(or no indexing, depending on requirements and when using a loop inside the condition. This is to allow rows for first MAtrix A with columns of second Matrix B.)
    return res     
