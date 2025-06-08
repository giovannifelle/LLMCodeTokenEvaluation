```scala
def binarySearch(arr: Array[Int], target: Int): Int = {
  var low = 0
  var high = arr.length - 1

  while (low <= high) {
    val mid = (low + high) / 2
    if (arr(mid) == target) {
      return mid
    } else if (arr(mid) < target) {
      low = mid + 1
    } else {
      high = mid - 1
    }
  }

  return -1
}
```