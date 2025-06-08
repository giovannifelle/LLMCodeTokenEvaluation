Sure, here is the pure JavaScript source code for a matrix multiplication algorithm without comments, explanations, or documentation:

```javascript
function matrixMultiply(a, b) {
    let result = new Array(a.length).fill().map(() => new Array(b[0].length).fill(0));
    
    if (a[0] && a[0].length && b.length && b[0] && b[0].length)
        for (let i = 0; i < a.length; i++) 
            for (let j = 0; j < b[0].length; j++) 
                for (let k = 0; k < a[0].length; k++) 
                    result[i][j] += a[i][k] * b[k][j];
    return result;
}
```
This function takes two arrays `a` and `b` as input. It assumes that the dimensions of the matrices are compatible for multiplication (the number of columns in the first matrix is equal to the number of rows in the second). The resulting array represents the product of `a` and `b`.