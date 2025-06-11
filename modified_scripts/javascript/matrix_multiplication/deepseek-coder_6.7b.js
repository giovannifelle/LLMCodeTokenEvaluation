
function matrixMultiply(a, b) {
    let result = new Array(a.length).fill().map(() => new Array(b[0].length).fill(0));
    
    if (a[0] && a[0].length && b.length && b[0] && b[0].length)
        for (let i = 0; i < a.length; i++) 
            for (let j = 0; j < b[0].length; j++) 
                for (let k = 0; k < a[0].length; k++) 
                    result[i][j] += a[i][k] * b[k][j];
    return result;
}
