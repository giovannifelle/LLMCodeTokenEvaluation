
def bubbleSort(arr: Array[Int]): Array[Int] = {
  var n = arr.length
  var swapped: Boolean = false
  while (n > 1) {
    swapped = false
    for (i <- 0 until n - 1) {
      if (arr(i) > arr(i + 1)) {
        val temp = arr(i)
        arr(i) = arr(i + 1)
        arr(i + 1) = temp
        swapped = true
      }
    }
    if (!swapped) return arr
    n -= 1
  }
  arr
}
