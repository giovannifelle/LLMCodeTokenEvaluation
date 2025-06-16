
// qwen3_8b CODE
function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;
  while (left <= right) {
    let mid = Math.floor((left + right) / 2);
    if (arr[mid] === target) return mid;
    if (arr[mid] < target) left = mid + 1;
    else right = mid - 1;
  }
  return -1
}
// gemma_7b CODE

function binarySearch(arr, target) {
  let low = 0;
  let high = arr.length - 1;

  while (low <= high) {
    const mid = Math.floor((low + high) / 2);

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

// qwen2_5-coder_3b CODE

function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1; 
    } else {
      right = mid - 1; 
    }
  }

  return -1;
}

// deepseek-coder_6_7b CODE

function binarySearch(arr, x) {
    let start = 0;
    let end = arr.length - 1;
    
    while (start <= end) {
        let mid = Math.floor((start + end) / 2);
        
        if (arr[mid] === x) return true;
        
        if (arr[mid] < x) start = mid + 1;
        else end = mid - 1;
    }
    
    return false;
}

// qwen2_5-coder_7b CODE

function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    const mid = Math.floor((left + right) / 2);

    if (arr[mid] === target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}

// gemma_2b CODE

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

// deepseek-coder_1_3b CODE
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

// qwen3_1_7b CODE
function binarySearch(arr, target) {
  let left = 0;
  let right = arr.length - 1;
  while (left <= right) {
    let mid = left + Math.floor((right - left) / 2);
    if (arr[mid] === target) {
      return mid;
    }
    if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}