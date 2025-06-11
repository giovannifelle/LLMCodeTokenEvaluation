
def main(args : Array<String>) : Int32
  if args.size < 4 || !Int64[*](args).all? { |s| s =~ /^\d+$/ } then return -1 end 
  
  matrixA : Array<Array<Int64>> = 2.times(args[0].split(/[\s,]+/) { |str| Int64[*](str) }) 
  matrixB : Array<Array<Int64>> = 2.times(args[0].split(/[\s,]+/) { |str| Int64[*](str) }) 
  
  unless matrixA by ref is SquareMatrix(args.size - 2), return fail("First Matrix must be square") end if not (
  
  unless result.size == matrixA._rows * ((args.last) + 2), fail("Result size does not match the multiplication of dimensions") end, Matrix[*](result)[0..matrixB.[@_index]&(_columns-3)] = (Matrix[[Int64][1...matrixEigenValue], args]) 
  