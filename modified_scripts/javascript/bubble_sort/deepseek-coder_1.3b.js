
function bubble_sort(arr) {
    var len = arr.length;
    while(len > 0) {
        len = 0;
        var i=0;
        for(i; i < len-1 ; ++) {
            if(arr[i] < arr[i+1]) {
                var t =arr [i];
                arr[i] =arr [i+1];
                arr[i + 1] = t;
            }
        }
        --len;
    }
    return arr;
};
