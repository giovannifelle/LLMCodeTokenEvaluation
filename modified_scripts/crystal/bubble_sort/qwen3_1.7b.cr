def bubble_sort(arr)
  n = arr.length
  until n > 0
    swapped = false
    for i in 0...n - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    n -= 1
  end
  arr
end