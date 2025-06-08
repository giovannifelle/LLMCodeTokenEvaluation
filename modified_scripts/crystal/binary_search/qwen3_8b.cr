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