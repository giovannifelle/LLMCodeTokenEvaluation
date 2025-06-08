fn binary_search<T: PartialEq>(mut arr: Vec<T>, mut l: usize, mut r: usize) -> Option<usize> {
    while l <= r {
        let m = (l + r) / 2;
        if arr[m] < arr[l] {
            r = m - 1;
        } else if arr[m] > arr[r] {
            l = m + 1;
        } else {
            return Some(m);
        }
    }
    None
}