```rust
pub fn bubble_sort<T: Ord>(arr: &mut [T]) {
    let len = arr.len();
     for i in (0..len).rev() { // reversed iteration as we're sorting from smallest to largest, not the opposite way around 
         for j in 1..=i {   // comparisons with elements before 'j'. It stops at index `i`. The range is inclusive of start and exclusive end point (since it must compare every pair) so using <= instead of < here as we don't need to swap when the current element equals next one
              if !arr[j - 1].gt(&arr[j]) { // arr[0..n-2] because last i elements are already sorted. Swap only for those which may be less than their neighbours, not comparing against themselves (as it will fail to compare) as we don't need sorting in case of duplicates
                  arr.swap(j - 1, j); // swap the items into place using array slice `arr[first..last]`; elements at indices last and first are swapped for themsleves (excluding those specified by 'First') but not themselves because they're already in their rightful order
              }  
         } 
     }   
}      // end of bubble sort algorithm. The array is now sorted from smallest to largest!`, and we are done with this function