```scala
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
```