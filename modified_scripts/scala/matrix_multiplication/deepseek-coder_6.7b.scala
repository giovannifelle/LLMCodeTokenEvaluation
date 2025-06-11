
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
