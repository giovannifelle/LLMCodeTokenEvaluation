
# qwen2_5-coder_7b CODE

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

# qwen3_1_7b CODE

# qwen3_8b CODE
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
# deepseek-coder_6_7b CODE

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

# gemma_2b CODE



# deepseek-coder_1_3b CODE


def bubbleSort(array : [Int]) : Unit =
    size   = array.size() - 1
    sorted = false
  
    while not sorted do
      sorted  = true;
       0..size step by 2 using ix in |i| {
         if (array[ix] > array[ix + 1]) then
           swap(array, ix.toInt(), (ix+1).toInt())
             set sorted = false
            end if }
    size -= 1 until sorted and not empty? : Array<Int> => Int do |i|: 0..size step by 2 using j in |j|  {...} End while; array.print()
end def

# gemma_7b CODE



# qwen2_5-coder_3b CODE

def bubble_sort(arr)
  arr.length.times do |i|
    (arr.length - i - 1).times do |j| 
      arr[j] > arr[j + 1] ? (arr[j], arr[j + 1]) = (arr[j + 1], arr[j]) : nil
    end
  end
end
