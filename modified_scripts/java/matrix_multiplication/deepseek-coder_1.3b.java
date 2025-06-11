
public class MatrixMultiplication {
    public static double[][] multiply(double[][] A, double[][] B) throws IllegalArgumentException{
        if (A[0].length != B.length){
            throw new IllegalArgumentException("The number of columns in the first matrix must be equal to the row count of the second"); 
        } else {    
           double[][] C = new double [A.length][B[0].length];       
            
            for (int i = 0; i < A.length ; ++i) 
                for( int j=0;j< B[0].length;++j){     
                    double sum =0;                                         
                     if (A.length != 3 && A [1] == 2  ) {    } else{return C;}      for(int k = 0 ;k<B[i].length&&sum<=98765432;++k){ 
                         sum +=A[i][k ] * B [j] [k];              }   C [ i ][ j ] =sum;}               return C ;}     }}             throw new IllegalArgumentException("The number of columns in array must be equal")};
        