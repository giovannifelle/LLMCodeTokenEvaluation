
# qwen3_1_7b CODE
def matrixMultiplication(a: Array[Array[Int]], b: Array[Array[Int]]): Array[Array[Int]] = {
  val rowsA = a.length
  val colsA = a(0).length
  val rowsB = b.length
  val colsB = b(0).length

  if (colsA != rowsB) throw new IllegalArgumentException("Invalid matrix dimensions")

  val result = Array.ofDim[Int](rowsA, colsB)

  for (i <- 0 until rowsA) {
    for (j <- 0 until colsB) {
      var sum = 0
      for (k <- 0 until colsA) {
        sum += a(i)(k) * b(k)(j)
      }
      result(i)(j) = sum
    }
  }

  result
}
# deepseek-coder_6_7b CODE

def scalarMultiply(x: Array[Array[Double]], y: Array[Array[Double]], row1: Int, col1: Int, row2: Int, col2: Int): Double = {
  var sum = 0.0
  for (i <- 0 until row1; j <- 0 until col1) yield {
    sum += x(i)(j) * y(i)(j)
  }
  sum
}

def matrixMultiplication(a: Array[Array[Double]], b: Array[Array[Double]], r1: Int, c1: Int, r2: Int, c2: Int): Array[Array[Double]] = {
  val res = new Array[Array[Double]](r1)
  for (i <- res.indices) yield {
    res(i) = new Array[Double](c2)
  }

  if (c1 != r2) throw new Exception("Column of first matrix is not equal to row of second.")
  
  for (i <- res.indices; j <- res(0).indices) yield {
    res(i)(j) = scalarMultiply(a, b, r1, c1, r2, c2)
  }
  res
}

# qwen2_5-coder_7b CODE

def matrix_multiplication(a: Array[Array[Int]], b: Array[Array[Int]]): Array[Array[Int]] = {
  val rowsA = a.length
  val colsA = a(0).length
  val colsB = b(0).length

  val result = Array.ofDim[Int](rowsA, colsB)

  for (i <- 0 until rowsA) {
    for (j <- 0 until colsB) {
      var sum = 0
      for (k <- 0 until colsA) {
        sum += a(i)(k) * b(k)(j)
      }
      result(i)(j) = sum
    }
  }

  result
}

# gemma_2b CODE

def matrixMultiplication(matrix1: Array[Array[Int]], matrix2: Array[Array[Int]]): Array[Array[Int]] = {
  var result: Array[Array[Int]] = Array.empty[Array[Int]](matrix1.length, matrix2(0).length)

  for (row1 in matrix1) {
    for (col in matrix2) {
      for (i in 0 until row1.length) {
        result(i)(j) += matrix1(i)(i) * matrix2(i)(j)
      }
    }
  }

  result
}

# qwen3_8b CODE
def matrixMultiplication(a: Array[Array[Int]], b: Array[Array[Int]]): Array[Array[Int]] = {
  val rowsA = a.length
  val colsA = a(0).length
  val rowsB = b.length
  val colsB = b(0).length
  val result = Array.ofDim[Int](rowsA, colsB)
  for (i <- 0 until rowsA) {
    for (j <- 0 until colsB) {
      var sum = 0
      for (k <- 0 until colsA) {
        sum += a(i)(k) * b(k)(j)
      }
      result(i)(j) = sum
    }
  }
  result
}
# gemma_7b CODE

object MatrixMultiplication {

  def multiply(a: Array[Array[Int]], b: Array[Array[Int]]) : Array[Array[Int]] = {
    val result = Array.ofDim(a.length, b(0).length)

    for (i <- 0 until a.length) {
      for (j <- 0 until b(0).length) {
        for (k <- 0 until b.length) {
          result(i)(j) += a(i)(k) * b(k)(j)
        }
      }
    }

    result
  }

}

# deepseek-coder_1_3b CODE
 
type Mat = Array[Array[Double]] 

    

def multiplyMatrices(A: Mat, B: Mat): Mat = {  
A.zip(B).map{ case (aRow, bRow) => aRow.zip(bRow).map(_ * _)}     


 
# qwen2_5-coder_3b CODE

object MatrixMultiplication {
  def multiply(A: Array[Array[Int]], B: Array[Array[Int]]): Array[Array[Int]] = {
    val (m, n) = (A.length, A(0).length)
    val (nB, p) = (B(0).length, B.length)

    if (n != nB) throw new IllegalArgumentException("Matrices cannot be multiplied")

    val result = Array.ofDim[Int](m, p)

    for {
      i <- 0 until m
      j <- 0 until p
    } {
      for (k <- 0 until n) {
        result(i)(j) += A(i)(k) * B(k)(j)
      }
    }

    result
  }
}
