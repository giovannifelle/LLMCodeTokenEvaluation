
# qwen3_1_7b CODE
def binarySearch(arr: Array[Int], target: Int): Int = {
  var low = 0
  var high = arr.length - 1
  while (low <= high) {
    val mid = low + (high - low) / 2
    if (arr(mid) == target) return mid
    if (arr(mid) < target) low = mid + 1
    else high = mid - 1
  }
  -1
}
# deepseek-coder_6_7b CODE

def binarySearch(arr: Array[Int], low: Int, high: Int, key: Int): Boolean = {
    if (high >= low) {
        val mid = low + (high - low) / 2
  
        if (arr(mid) == key) true
        else if (arr(mid) > key) binarySearch(arr, low, mid - 1, key)
        else binarySearch(arr, mid + 1, high, key)
    } else false
}

# qwen2_5-coder_7b CODE

def binarySearch(arr: Array[Int], target: Int): Int = {
  var left = 0
  var right = arr.length - 1
  while (left <= right) {
    val mid = left + (right - left) / 2
    if (arr(mid) == target) {
      return mid
    } else if (arr(mid) < target) {
      left = mid + 1
    } else {
      right = mid - 1
    }
  }
  -1
}

# gemma_2b CODE

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

# qwen3_8b CODE
def binarySearch(arr: Array[Int], target: Int): Int = {
  var left = 0
  var right = arr.length - 1
  while (left <= right) {
    val mid = left + (right - left) / 2
    if (arr(mid) == target) return mid
    if (arr(mid) < target) left = mid + 1
    else right = mid - 1
  }
  -1
}
# gemma_7b CODE

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

  -1
}

# deepseek-coder_1_3b CODE

def binary_search_iterative(arr :Array [Int] , low : Int, high : Int): Option[Int] = {
   var mid = 0; 
     if (high >= low) {      
        mid = low + (high - low) / 2;      
        
        if(arr(mid) == target){          return Some(mid);}     else   
                
           if ( arr(mid) < target ) { binary_search_iterative(arr , mid+1, high)}  
                      return None;    else               
# qwen2_5-coder_3b CODE

def binarySearch(arr: Array[Int], target: Int): Option[Int] = {
  var left = 0
  var right = arr.length - 1

  while (left <= right) {
    val mid = left + (right - left) / 2

    if (arr(mid) == target) return Some(mid)
    else if (arr(mid) < target) left = mid + 1
    else right = mid - 1
  }

  None
}
