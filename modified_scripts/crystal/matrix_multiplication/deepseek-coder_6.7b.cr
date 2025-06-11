
def matrix_multiplication(a : Array2D(Int32), b : Array2D(Int32)) : Array2D(Int32)
  rows_a = a.size
  cols_a = a[0].size
  rows_b = b.size
  cols_b = b[0].size
  
  return nil if cols_a != rows_b
  
  result = Array2D(Int32).new(rows_a, cols_b) { 0 }
  
  for i in 0..rows_a-1
    for j in 0..cols_b-1
      for k in 0..cols_a-1
        result[i][j] += a[i][k] * b[k][j]
      end
    end
  end
  
  return result
end