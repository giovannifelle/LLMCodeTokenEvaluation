Here is the source code for bubble sort algorithm in Scala without comments and with no imports of additional libraries except List like below;  
```scala
def bubblesort(xs :List[Int]): Unit = {    
    def loop (n : Int, xs : List[Int]) : List [Int ] = 
        n + 
          match{ 
            case Nil => 0 // if list is empty return size of the rest which should be zero.  
            | Cons(h, t) =>    
              val res = mergeSort (xs filterNot (_ > h)) ++ xs filter(_>h )    mergesort with non-empty lists and will only call itself when input becomes smaller list in length then 1 else if it is empty return zero  0 otherwise recursive calls.      //merge sort function    
              loop(res.length, res)// repeat the process until size of array gets to be one or less    which means sorted complete...and we're done!       }       
         val y = xs length  in a variable named 'y'.   then print it out on console (println("Final Sorted Array is : " + res)) //printing the result. It will display final array after each iteration of merge sort loop by using bubble-sort algorithm which works like selection sort or well known as comparison based sorted algorithms with time complexity O(n^2).   
         }  0  call to recursion end here, and then start processing it on console .     for example: if you're array is [5 ,4 ,3,6] the result will be :[ ] where each element represents a step of merge sort process.//each individual digit in this list indicates one pass through bubble-sort algorithm with elements being sorted by that iteration level into final order
END OF PROGRAM
```    
This code is for demonstration purpose only and does not work efficiently as it's using the filter method which has a time complexity of O(n^2) due to sequential filtering in List. For larger lists, more efficient sorting algorithms such as QuickSort or Merge Sort would be preferred over Bubble-sort because their average case performance is better than bubble sorted algorithm (O(n log n)).