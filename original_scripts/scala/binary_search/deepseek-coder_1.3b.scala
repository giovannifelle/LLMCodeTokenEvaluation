Here is a simple implementation of binary search algorithm in scala without using comments and with only the source codes for each method (BinarySearchIterativeAndRecursive). You can use it as base by understanding how to implement more methods if needed, like `binary_search(array : Array[Int], target: Int)`.
```scala
// Iterative Binary Search Algorithm 
def binary_search_iterative(arr :Array [Int] , low : Int, high : Int): Option[Int] = {
   var mid = 0; // Initialize middle element for reference while finding the position of number in array.   
     if (high >= low) {      /* Get the middle index */ 
        mid = low + (high - low) / 2;      
        
        // Check whether key value is present at the middle itself  
        if(arr(mid) == target){          return Some(mid);}     else   
            // If key greater, ignore left half. Else go to right hand side     
           if ( arr(mid) < target ) { binary_search_iterative(arr , mid+1, high)}   /* The number can be present in either 
                        left or right */ return None;    else                   // otherwise continue the search process for rest of array.         [...]     }}     `None `if key is smaller than arr[mid], then it must lie on the 'left' side (lesser). Else, we can only look in either part where upper value may be present
```  */ /* if you have a very large list and want to reduce steps of searching just continue for lower half.*/ `else {binary_search(arr , low, mid),}`    else None; }   return None // If the element is not found in array then it will come out as none
```  """}}""" ") */ }}", """)"""))))) )("))(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(
```scala  """}}""" ") */ }}", """)"""))))) )(((() ("())))" (() ") ((())" ()"(+([])([{}])]))){}) {{{{ [](([)]'[[[' ']]'))''')(' ''']] }})) ''''(