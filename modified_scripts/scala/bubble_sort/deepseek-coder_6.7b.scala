Here is the pure source code for bubble sort algorithm in Scala:

```scala
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
```
This code defines a function `bubbleSort` that takes an array of integers and sorts it in ascending order using the bubble sort algorithm. The outer loop continues until no more swaps are made (indicating the list is sorted). Inside this loop, another loop iterates over each pair of adjacent elements in the array. If the first element is greater than the second, they are swapped to maintain the correct order. This process is repeated for all pairs and continues until a pass through the array where no more swaps are made indicates that the list is sorted.