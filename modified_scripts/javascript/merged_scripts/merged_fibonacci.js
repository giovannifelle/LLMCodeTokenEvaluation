
// qwen3_8b CODE
function fibonacci(n) {
  if (n <= 1) return n
  let a = 0
  let b = 1
  for (let i = 2; i <= n; i++) {
    let c = a + b
    a = b
    b = c
  }
  return b
}
// gemma_7b CODE

function fib(n) {
    if (n < 2) {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}

// qwen2_5-coder_3b CODE


function fib(n) {
  if (n <= 1) return n;
  let a = 0, b = 1, c = 0;
  for (let i = 2; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
  }
  return c;
}

// deepseek-coder_6_7b CODE

function fibonacci(n) {
    if (n <= 2) return 1;
    var prev = 1, next = 1;
    for (var i = 3; i <= n; i++) {
        var temp = prev + next;
        prev = next;
        next = temp;
    }
    return next;
}

// qwen2_5-coder_7b CODE

function fibonacci(n) {
    if (n <= 1) return n;
    let a = 0, b = 1, temp;
    for (let i = 2; i <= n; i++) {
        temp = a + b;
        a = b;
        b = temp;
    }
    return b;
}

// gemma_2b CODE

function fibonacci(n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// deepseek-coder_1_3b CODE

function fibonacci(n) { 
  if (Math.abs(n) !== Math.floor(Math.abs(n))) { 
    throw new Error("Invalid input! Fibonacci is not defined for negative integers.");
    } else {
      const goldenRatio = Math.sqrt(5);
      const powerOfTwo = Math.pow((1 + goldenRatio),n);
      return Math.round((powerOfTwo / goldenRatio -黄金常数)/5);
    }
  }
} 

// qwen3_1_7b CODE
function fibonacci() {
  let a = 0,
      b = 1,
      c;
  while (true) {
    c = a + b;
    a = b;
    b = c;
  }
  return b;
}