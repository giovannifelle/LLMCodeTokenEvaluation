 
type Mat = Array[Array[Double]] 

    

def multiplyMatrices(A: Mat, B: Mat): Mat = {  
A.zip(B).map{ case (aRow, bRow) => aRow.zip(bRow).map(_ * _)}     


 