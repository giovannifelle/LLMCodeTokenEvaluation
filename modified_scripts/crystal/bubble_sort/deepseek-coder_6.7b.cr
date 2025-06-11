
def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false
    0.upto(n - 2) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end
