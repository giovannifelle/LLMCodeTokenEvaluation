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