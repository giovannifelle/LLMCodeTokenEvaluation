
// qwen3_8b CODE
function bubbleSort(arr) {
  let n = arr.length;
  for (let i = 0; i < n - 1; i++) {
    for (let j = 0; j < n - 1 - i; j++) {
      if (arr[j] > arr[j + 1]) {
        let temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}
// gemma_7b CODE

function bubbleSort(arr) {
  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
      }
    }
  }
  return arr;
}

// qwen2_5-coder_3b CODE

function bubbleSort(arr) {
  let n = arr.length;
  for (let i = 0; i < n - 1; i++) {
    for (let j = 0; j < n - 1 - i; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
      }
    }
  }
  return arr;
}

// deepseek-coder_6_7b CODE

function bubbleSort(arr) {
    var len = arr.length;
    for (var i = 0; i < len - 1; i++) {
        for (var j = 0; j < len - 1 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                var temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return arr;
}

// qwen2_5-coder_7b CODE

function bubbleSort(arr) {
  let n = arr.length;
  for (let i = 0; i < n - 1; i++) {
    for (let j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        let temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

// gemma_2b CODE

function bubbleSort(arr) {
  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        let temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

// deepseek-coder_1_3b CODE

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

// qwen3_1_7b CODE
function bubbleSort(arr) {  
  for (let i = 0; i < arr.length - 1; i++) {  
    for (let j = 0; j < arr.length - 1 - i; j++) {  
      if (arr[j] > arr[j + 1]) {  
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];  
      }  
    }  
  }  
  return arr;  
}