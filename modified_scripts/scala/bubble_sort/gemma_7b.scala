
object BubbleSort {

  def sort(arr: Array[Int]): Array[Int] = {
    var j = arr.length
    while (j > 1) {
      j = arr.length
      for (i <- 0 until j - 1) {
        if (arr(i) > arr(i + 1)) {
          arr(i) = arr(i) ^ arr(i + 1)
          arr(i + 1) = arr(i) ^ arr(i + 1)
          arr(i) = arr(i) ^ arr(i + 1)
        }
      }
    }
    arr
  }

}
