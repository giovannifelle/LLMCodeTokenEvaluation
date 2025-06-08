```crystal
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
```