```crystal
module MatrixMultiplication
  def self.multiply(a, b)
    rows_a = a.length
    cols_a = a.first.length
    cols_b = b.first.length

    result = Array(Array(Int64)) of rows_a do
      Array(cols_b) of 0
    end

    rows_a.times do |i|
      cols_b.times do |j|
        cols_a.times do |k|
          result[i][j] += a[i][k] * b[k][j]
        end
      end
    end

    result
  end
end
```