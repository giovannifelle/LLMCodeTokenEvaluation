```rust
fn bubble_sort(nums: &mut [i32]) {
    for i in 0..(nums.len() - 1) {
        for j in 0..(nums.len() - i - 1) {
            if nums[j] > nums[j + 1] {
                swap(&mut nums[j], &mut nums[j + 1]);
            }
        }
    }
}
```