def bubble_sort(arr)
  n = arr.size
  (n-1).times do |i|
    (n-1-i).times do |j|
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  arr
end