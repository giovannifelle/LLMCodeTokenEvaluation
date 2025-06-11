
function binarySearch(arr, target) {
  let low = 0;
  let high = arr.length;

  while (low <= high) {
    const mid = (low + high) / 2;
    if (arr[mid] === target) {
      return mid;
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}
