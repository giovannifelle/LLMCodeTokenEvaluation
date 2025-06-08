```crystal
def matrix_multiplication(a : Array[Array[Int]], b : Array[Array[Int]]) : Array[Array[Int]]
  rows_a = a.length
  cols_a = a[0].length
  cols_b = b[0].length

  result = Array.new(rows_a) { Array.new(cols_b, 0) }

  for i in 0...rows_a
    for j in 0...cols_b
      sum = 0
      for k in 0...cols_a
        sum += a[i][k] * b[k][j]
      end
      result[i][j] = sum
    end
  end

  return result
end
```