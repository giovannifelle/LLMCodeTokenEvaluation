```crystal
def bubble_sort(arr)
  arr.length.times do |i|
    (arr.length - i - 1).times do |j|
      arr[j] > arr[j + 1] ? (arr[j], arr[j + 1]) = (arr[j + 1], arr[j]) : nil
    end
  end
end
```