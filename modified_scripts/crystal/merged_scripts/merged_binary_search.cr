
# qwen2_5-coder_7b CODE

def binary_search(array : Array(Int32), target : Int32) : Int32 | Nil
  low = 0
  high = array.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = array[mid]

    if guess == target
      return mid
    elsif guess > target
      high = mid - 1
    else
      low = mid + 1
    end
  end

  nil
end

# qwen3_1_7b CODE
def binary_search(arr, x)
  low = 0
  high = arr.length - 1
  while low <= high
    mid = (low + high) / 2
    if arr[mid] == x
      return mid
    else
      if arr[mid] < x
        low = mid + 1
      else
        high = mid - 1
      end
    end
  end
  -1
end
# qwen3_8b CODE
def binary_search(arr, target) : Int32
  low = 0
  high = arr.size - 1
  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return -1
end
# deepseek-coder_6_7b CODE

def binary_search(data : Array(Int32), target : Int32) : Bool
    low = 0
    high = data.size - 1

    while low <= high do
        mid = (low + high) / 2
        guess = data[mid]

        if guess == target then return true end
        if guess > target then high = mid - 1 else low = mid + 1
      end
   end

   false
end

# gemma_2b CODE

binary_search(nums, target)
    result = binary_search_loop(nums, target)
    return result

# deepseek-coder_1_3b CODE


def binarySearch(arr: [Int], lowIndex: Int, highIndex: Int, x: Int) = {
    if(highIndex >= lowIndex){
        mid = (lowIndex + highIndex) /2;
        if (arr[mid] == x) { return mid; }
        else if (arr[mid] > x) {  highIndex = mid -1; }
        else{ lowIndex=mid+1;}
    }
}

# gemma_7b CODE

fn binary_search(arr: &[i32], target: i32) -> usize {
  let mut low = 0
  let mut high = arr.length - 1

  while low <= high do
    let mid = (low + high) / 2

    if arr[mid] == target {
      return mid
    } else if arr[mid] < target {
      low = mid + 1
    } else {
      high = mid - 1
    }
  end

  -1
}
# qwen2_5-coder_3b CODE

def binary_search(arr, target)
  left, right = 0, arr.size - 1

  while left <= right
    mid = (left + right) / 2

    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  nil
end
