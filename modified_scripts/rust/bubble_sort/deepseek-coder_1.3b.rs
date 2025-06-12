
pub fn bubble_sort<T: Ord>(arr: &mut [T]) {
    let len = arr.len();
     for i in (0..len).rev() { 
         for j in 1..=i {   
              if !arr[j - 1].gt(&arr[j]) { 
                  arr.swap(j - 1, j); 
              }  
         } 
     }   
}      