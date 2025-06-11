
def binarySearch(arr: Array[Int], low: Int, high: Int, key: Int): Boolean = {
    if (high >= low) {
        val mid = low + (high - low) / 2
  
        if (arr(mid) == key) true
        else if (arr(mid) > key) binarySearch(arr, low, mid - 1, key)
        else binarySearch(arr, mid + 1, high, key)
    } else false
}
