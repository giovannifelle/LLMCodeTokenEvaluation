
fn bubble_sort(arr: &mut [i32]) {
  for i in 0..(arr.length - 1) do |j|
    for k in 0..(arr.length - j - 1) do |l|
      if arr[l] > arr[l + 1] do
        arr[l], arr[l + 1] = arr[l + 1], arr[l]
      end
    end
  end
}
