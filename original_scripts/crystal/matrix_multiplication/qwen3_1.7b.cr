Crystal
```crystal
def matrix_multiplication(a, b)
  a.rows == b.cols ? a.cols == b.rows : error("Matrix dimensions do not match")
  result = Array.new(a.rows, Array.new(b.cols))
  for i in 0...a.rows
    for j in 0...b.cols
      for k in 0...a.cols
        result[i][j] += a[i][k] * b[k][j]
      end
    end
  end
  result
end
```