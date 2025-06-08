```crystal
fn binary_search(arr: &[i32], target: i32) -> usize {
  let mut low = 0
  let mut high = arr.length - 1

  while low <= high do
    let mid = (low + high) / 2

    if arr[mid] == target {
      return mid
    } else if arr[mid] < target {
      low = mid + 1
    } else {
      high = mid - 1
    }
  end

  -1
}
```