
def bubbleSort(arr: Array[Int]): Unit = {
  val n = arr.length
  var swapped = true

  while (swapped) {
    swapped = false
    for (i <- 0 until n - 1) {
      if (arr(i) > arr(i + 1)) {
        // Swap arr(i) and arr(i+1)
        val temp = arr(i)
        arr(i) = arr(i + 1)
        arr(i + 1) = temp
        swapped = true
      }
    }
  }
}
