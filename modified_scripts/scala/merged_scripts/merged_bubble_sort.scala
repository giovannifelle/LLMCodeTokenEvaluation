
# qwen3_1_7b CODE
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
# deepseek-coder_6_7b CODE

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

# qwen2_5-coder_7b CODE

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

# gemma_2b CODE

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

# qwen3_8b CODE
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
# gemma_7b CODE

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

# deepseek-coder_1_3b CODE

def bubblesort(xs :List[Int]): Unit = {    
    def loop (n : Int, xs : List[Int]) : List [Int ] = 
        n + 
          match{ 
            case Nil => 0 
            | Cons(h, t) =>    
              val res = mergeSort (xs filterNot (_ > h)) ++ xs filter(_>h )    mergesort with non-empty lists and will only call itself when input becomes smaller list in length then 1 else if it is empty return zero  0 otherwise recursive calls.      
         val y = xs length  in a variable named 'y'.   then print it out on console (println("Final Sorted Array is : " + res)) 
         }  0  call to recursion end here, and then start processing it on console .     for example: if you're array is [5 ,4 ,3,6] the result will be :[ ] where each element represents a step of merge sort process.
END OF PROGRAM

# qwen2_5-coder_3b CODE

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
