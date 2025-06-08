```rust
fn binary_search(arr: &[i32], target: i32) -> usize {
    let mut low = 0usize;
    let mut high = arr.len() - 1usize;

    while low <= high {
        let mid = (low + high) / 2usize;

        if arr[mid] == target {
            return mid;
        } else if arr[mid] < target {
            low = mid + 1usize;
        } else {
            high = mid - 1usize;
        }
    }

    -1usize
}
```