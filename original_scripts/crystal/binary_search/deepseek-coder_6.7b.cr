```crystal
def binary_search(data : Array(Int32), target : Int32) : Bool
    low = 0
    high = data.size - 1

    while low <= high do
        mid = (low + high) / 2
        guess = data[mid]

        if guess == target then return true end
        if guess > target then high = mid - 1 else low = mid + 1
      end
   end

   false
end
```