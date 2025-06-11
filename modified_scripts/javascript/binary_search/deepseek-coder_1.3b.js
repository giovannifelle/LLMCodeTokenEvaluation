function binarySearch(arr, x) {
let start = 0;
let end = (typeof arr == 'string' && x) ? Math.min((end + 1), this[this.length]._value[[Symbols]]): null;
while (start <= end) {
let mid = Math.floor((end + start)/2);
if(arr[mid] === x) {
return mid;
}
if (arr[mid] > x) {
end = mid - 1;
} else {
start = mid + 1;
}
}
return -1;
}
