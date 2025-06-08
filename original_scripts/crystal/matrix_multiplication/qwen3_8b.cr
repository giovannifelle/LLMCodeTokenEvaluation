def matrix_mult(a, b)
  rows_a = a.size
  cols_a = a[0].size
  rows_b = b.size
  cols_b = b[0].size

  result = Array.new(rows_a) { Array.new(cols_b, 0) }

  rows_a.times do |i|
    cols_b.times do |j|
      cols_a.times do |k|
        result[i][j] += a[i][k] * b[k][j]
      end
    end
  end

  result
end