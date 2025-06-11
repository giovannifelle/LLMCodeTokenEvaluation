
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
