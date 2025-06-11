
def bubbleSort(arr: Array[Int]): Unit = {
  var swapped = false
  for (i <- 0 to arr.length - 1) {
    if (arr(i) > arr(i + 1)) {
      swap(arr, i, i + 1)
      swapped = true
    }
  }
}

private def swap(arr: Array[Int], i: Int, j: Int): Unit = {
  val temp = arr(i)
  arr(i) = arr(j)
  arr(j) = temp
}
