
function matrixMultiplication(matrixA, matrixB) {
 
  const resultMatrix = [];

  for (let i = 0; i < matrixA.rows; i++) {
    for (let j = 0; j < matrixB.cols; j++) {
      let result = matrixA[i][i] * matrixB[j][j];

      resultMatrix.push(result);
    }
  }

  return resultMatrix;
}
