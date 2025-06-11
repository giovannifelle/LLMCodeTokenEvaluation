
def bubble_sort(arr : Array(Int32))
  n = arr.length
  loop do
    swapped = false
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr.swap(i, i + 1)
        swapped = true
      end
    end
    break unless swapped
  end
end
