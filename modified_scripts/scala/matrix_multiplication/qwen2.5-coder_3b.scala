
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
