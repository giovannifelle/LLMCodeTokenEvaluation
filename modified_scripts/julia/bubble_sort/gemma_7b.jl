
function bubble_sort(arr)
  for i in 1:length(arr) - 1
    for j in 1:length(arr) - i
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end

  arr
end
