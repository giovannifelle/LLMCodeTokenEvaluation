
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
