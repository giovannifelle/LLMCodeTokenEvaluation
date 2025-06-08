def bubbleSort(arr: Array[Int]): Unit = {
  val n = arr.length
  for (i <- 1 to n - 1) {
    for (j <- 0 to n - 2 - i) {
      if (arr(j) > arr(j + 1)) {
        arr(j) = arr(j + 1)
        arr(j + 1) = arr(j)
      }
    }
  }
}