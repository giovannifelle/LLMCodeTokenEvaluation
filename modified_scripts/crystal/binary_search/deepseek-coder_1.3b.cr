

def binarySearch(arr: [Int], lowIndex: Int, highIndex: Int, x: Int) = {
    if(highIndex >= lowIndex){
        mid = (lowIndex + highIndex) /2;
        if (arr[mid] == x) { return mid; }
        else if (arr[mid] > x) {  highIndex = mid -1; }
        else{ lowIndex=mid+1;}
    }
}
