
def bubbleSort(xs: Array[Int]): Unit = {
  var swapped = true
  while (swapped) {
    swapped = false
    for (i <- 0 until xs.length - 1) {
      if (xs(i) > xs(i + 1)) {
        val temp = xs(i)
        xs(i) = xs(i + 1)
        xs(i + 1) = temp
        swapped = true
      }
    }
  }
}
