

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
