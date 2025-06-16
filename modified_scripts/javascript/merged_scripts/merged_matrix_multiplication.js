
// qwen3_8b CODE
function matrixMultiplication(a, b) {
  const rowsA = a.length;
  const colsA = a[0].length;
  const rowsB = b.length;
  const colsB = b[0].length;
  const result = new Array(rowsA);
  for (let i = 0; i < rowsA; i++) {
    result[i] = new Array(colsB);
    for (let j = 0; j < colsB; j++) {
      let sum = 0;
      for (let k = 0; k < colsA; k++) {
        sum += a[i][k] * b[k][j];
      }
      result[i][j] = sum;
    }
  }
  return result;
}
// gemma_7b CODE

function matrixMultiplication(matrix1, matrix2) {
    const rows1 = matrix1.length;
    const cols1 = matrix1[0].length;
    const rows2 = matrix2.length;
    const cols2 = matrix2[0].length;

    if (cols1 !== rows2) {
        throw new Error('Matrices are not compatible for multiplication');
    }

    const result = Array(rows1).fill(0).map(i => Array(cols2).fill(0));

    for (let i = 0; i < rows1; i++) {
        for (let j = 0; j < cols2; j++) {
            for (let k = 0; k < cols1; k++) {
                result[i][j] += matrix1[i][k] * matrix2[k][j];
            }
        }
    }

    return result;
}

// qwen2_5-coder_3b CODE

function multiplyMatrix(A, B) {
    const rowsA = A.length;
    const colsA = A[0].length;
    const rowsB = B.length;
    const colsB = B[0].length;

    if (colsA !== rowsB) {
        throw new Error("Number of columns in A must be equal to number of rows in B");
    }

    const result = Array.from({ length: rowsA }, () => Array(colsB).fill(0));

    for (let i = 0; i < rowsA; i++) {
        for (let j = 0; j < colsB; j++) {
            for (let k = 0; k < colsA; k++) {
                result[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    return result;
}

// deepseek-coder_6_7b CODE

function matrixMultiply(a, b) {
    let result = new Array(a.length).fill().map(() => new Array(b[0].length).fill(0));
    
    if (a[0] && a[0].length && b.length && b[0] && b[0].length)
        for (let i = 0; i < a.length; i++) 
            for (let j = 0; j < b[0].length; j++) 
                for (let k = 0; k < a[0].length; k++) 
                    result[i][j] += a[i][k] * b[k][j];
    return result;
}

// qwen2_5-coder_7b CODE

function multiplyMatrices(a, b) {
    const result = [];
    for (let i = 0; i < a.length; i++) {
        const row = [];
        for (let j = 0; j < b[0].length; j++) {
            let sum = 0;
            for (let k = 0; k < a[0].length; k++) {
                sum += a[i][k] * b[k][j];
            }
            row.push(sum);
        }
        result.push(row);
    }
    return result;
}

// gemma_2b CODE

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

// deepseek-coder_1_3b CODE

function multiplyMatrices(a, b) {
    const rowsA = a.length;
    const colsB = b[0].length;
    
    const rowsB = a[0].length; 
    
    if (!Number.isInteger(rowsB)) throw new Error('Matrix multiplication can only be performed on integer matrixes');
    
    if (rowsA !== rowsB) throw new Error('Matrix multiplication requires equal number of columns in each row for Matrix A'); 
    
    const result = [];  
        
      
     
    result[a] = 0, i < 1 && colsB > 2 ? (result = []) : null;      for(let j=b:i<rowsA&&colsB>3?null:(void 0), k++){ 
        if (!Number.isInteger([a[k]* b])) throw new Error('Matrix multiplication can only be performed on integer or floating point matrices');
        result[a] = (result.hasOwnProperty(b)? ((k == 0 ? [] : []) as any) += a[(i += 1)] * b: new Array((rowsA)).fill(-Infinity)); 
    }   return result;      for (let i = 0, l = rowsB > 2 ? ((result[a] as any)[i++]) : null;) {     while(l !== undefined) 
        if (!Number.isInteger([+ result[(j += 1)]])) throw new Error('Matrix multiplication can only be performed on integer or floating point matrices');
        l = (rowsB > 2 && result[(j += 1)] !== undefined) ? ((result[a] as any)[l++]) : null;  
    }     for(let j=0 ;j<rowsA&&colsB>2?null:{i++}:void (a[k] = a[(b += 1)] * b), k < rowsA && colsM > 3 ? null : void 0) {  
        if (!Number.isInteger([result])) throw new Error('Matrix multiplication can only be performed on integer or floating point matrices');
        if(k==0 && colsM > 2?null:{j++}:void (a[i] = a[(b += 1)]), k < rowsA ? null : void ((rowsB--,colsB>3)?console.log('Resulting Matrix:'):false)) {
        result += colsM > 2?a[i]:0;
        } else{result[a] = (k==0?[]:(i++))}; return rowsB > colsM ? ((colsM > 2)?b:[null]) : false; 
    } };   result[a] = (rowsA === 1 && b === c) || rowsB > colsM ? ((colsM > 2)?b:c):false; 
    } else {if (!(rowsA instanceof Array && (typeof b === 'object') || rowsB !== typeof colM)) throw new Error('Matrix multiplication requires equal number and type to be compatible');
    result[a] = ((rowsA === 1 && b === c) || rowsB > a.length)?((colsM > 2?b:c):false); 
    }; if (!rowsA && ((colsM > 2)?b:c)) throw new Error('Matrix multiplication requires at least one matrix'); 
}` }    `!DOCTYPE html>\n<html lang="en-US\" > \n <head> <meta charset = "UTF -8" /></title>  'Matrix Multiplication'  <style (contenteditable=true, h1)css:;h2{color:#369;} p { color :# 5A0DAD} a:link ,a：visited，a：hover、a链接的样式在这里没有包含在内。

// qwen3_1_7b CODE
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