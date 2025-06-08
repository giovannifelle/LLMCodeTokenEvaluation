```rust
pub fn bubble_sort<T: Ord>(arr: &mut [T]) {
    let n = arr.len();
    for _ in 0..n {
        let mut swapped = false;
        for i in 1..n {
            if arr[i - 1] > arr[i] {
                arr.swap(i - 1, i);
                swapped = true;
            }
        }
        // If no two elements were swapped by inner loop, then break
        if !swapped {
            break;
        }
    }
}
```