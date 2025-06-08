```rust
fn binary_search(target: u32, arr: &[u32]) -> i32 {
    let low = 0;
    let high = arr.len();

    while low <= high {
        let mid = (low + high) / 2;
        if arr[mid] == target {
            return mid;
        } else if arr[mid] < target {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    -1
}
```