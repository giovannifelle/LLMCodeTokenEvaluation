
matrix_multiplication = function(A, B) {
    if (nrow(A)!= ncol(B))  stop("Matrix dimensions are not correct")  
    result = rep(0, dim(A)[1]) 									    
    result = 	apply(A, MARGIN=2 , FUN = function (i){ 
        return(sum((B[i, ]*matrix_partitions)))  
    })            
    return(result)}   
