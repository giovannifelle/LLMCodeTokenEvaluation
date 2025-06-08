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