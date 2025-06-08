```rust
pub fn binary_search<T: Ord>(arr: &[T], target: T) -> Option<usize> {
    let mut start = 0;
    let mut end = arr.len();
    
    while start < end {
        let mid = (start + end) / 2;
        
        match arr[mid].cmp(&target) {
            std::cmp::Ordering::Equal => return Some(mid),
            std::cmp::Ordering::Less => start = mid + 1,
            std::cmp::Ordering::Greater => end = mid,
        }
    }
    
    None
}
```