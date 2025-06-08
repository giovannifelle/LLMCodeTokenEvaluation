```javascript
function matrixMultiplication(matrixA, matrixB) {
  // Create a new matrix to store the result
  const resultMatrix = [];

  // Loop through each row in matrixA
  for (let i = 0; i < matrixA.rows; i++) {
    // Loop through each column in matrixB
    for (let j = 0; j < matrixB.cols; j++) {
      // Calculate the multiplication of the corresponding rows and columns
      let result = matrixA[i][i] * matrixB[j][j];

      // Add the result to the result matrix
      resultMatrix.push(result);
    }
  }

  // Return the result matrix
  return resultMatrix;
}
```