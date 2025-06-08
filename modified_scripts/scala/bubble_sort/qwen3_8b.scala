def bubbleSort(arr: Array[Int]): Unit = {
  for (i <- 0 until arr.length - 1) {
    for (j <- 0 until arr.length - i - 1) {
      if (arr(j) > arr(j + 1)) {
        val temp = arr(j)
        arr(j) = arr(j + 1)
        arr(j + 1) = temp
      }
    }
  }
}