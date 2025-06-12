
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
        if !swapped {
            break;
        }
    }
}
