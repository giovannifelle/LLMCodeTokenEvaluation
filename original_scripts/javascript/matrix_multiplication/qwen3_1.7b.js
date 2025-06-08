function matrixMultiplication(a, b) {
  var rowsA = a.length, colsA = a[0].length, rowsB = b.length, colsB = b[0].length;
  var result = new Array(rowsA);
  for (var i = 0; i < rowsA; i++) {
    result[i] = new Array(colsB);
    for (var j = 0; j < colsB; j++) {
      var sum = 0;
      for (var k = 0; k < colsA; k++) {
        sum += a[i][k] * b[k][j];
      }
      result[i][j] = sum;
    }
  }
  return result;
}