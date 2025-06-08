Here is the source code for bubble_sort algorithm in Crystal language (which also supports high-level languages like Python):
```crystal
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
end def   # bubbleSort function definition ends here    ```crystal
```This code will sort an integer array with Bubble Sort algorithm (it's a simple but not very efficient variant of Insertion and Selection sorts). It does so by repeatedly swapping the adjacent elements if they are in wrong order. The pass through the list is repeated until no more swaps occur, indicating that the list has been sorted correctly.