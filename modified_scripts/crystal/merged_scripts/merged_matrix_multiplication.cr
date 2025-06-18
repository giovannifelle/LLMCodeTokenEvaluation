
# qwen2_5-coder_7b CODE

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

# qwen3_1_7b CODE

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

# qwen3_8b CODE
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
# deepseek-coder_6_7b CODE

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
# gemma_2b CODE

# deepseek-coder_1_3b CODE

def main(args : Array<String>) : Int32
  if args.size < 4 || !Int64[*](args).all? { |s| s =~ /^\d+$/ } then return -1 end 
  
  matrixA : Array<Array<Int64>> = 2.times(args[0].split(/[\s,]+/) { |str| Int64[*](str) }) 
  matrixB : Array<Array<Int64>> = 2.times(args[0].split(/[\s,]+/) { |str| Int64[*](str) }) 
  
  unless matrixA by ref is SquareMatrix(args.size - 2), return fail("First Matrix must be square") end if not (
  
  unless result.size == matrixA._rows * ((args.last) + 2), fail("Result size does not match the multiplication of dimensions") end, Matrix[*](result)[0..matrixB.[@_index]&(_columns-3)] = (Matrix[[Int64][1...matrixEigenValue], args]) 
  
# gemma_7b CODE

fn matrix_multiplication(
    matrix1: Vec<Vec<Fix64>>,
    matrix2: Vec<Vec<Fix64>>,
) -> Vec<Vec<Fix64>> {
    let m1, n1 = matrix1.size
    let m2, n2 = matrix2.size

    if n1 != m2 {
        panic!("Matrices are not compatible for multiplication")
    }

    let result = vec![vec![0] * n2] * m1

    for i in 0...m1
    for j in 0...n2
    for k in 0...n1
        result[i][j] += matrix1[i][k] * matrix2[k][j]

    result
}

# qwen2_5-coder_3b CODE

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
