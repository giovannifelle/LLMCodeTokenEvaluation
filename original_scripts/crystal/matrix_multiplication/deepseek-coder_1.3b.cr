Sure thing! Here is the source of matrix_multiplication in Crystal language which you requested for your question about crystal programming languages and algorithms (matrix multiplication):
```crystal
def main(args : Array<String>) : Int32
  if args.size < 4 || !Int64[*](args).all? { |s| s =~ /^\d+$/ } then return -1 end # Checking for valid arguments and ensuring they're all numbers, at least two of them needed since we are performing multiplication operation
  
  matrixA : Array<Array<Int64>> = 2.times(args[0].split(/[\s,]+/) { |str| Int64[*](str) }) # Convert string input to integer array for the first dimension (matrix rows size = args[1]) and then each row into an Integer Array
  matrixB : Array<Array<Int64>> = 2.times(args[0].split(/[\s,]+/) { |str| Int64[*](str) }) # Do the same as above but for second dimension (matrix columns size = args[1]) and then each column into an Integer array
  
  unless matrixA by ref is SquareMatrix(args.size - 2), return fail("First Matrix must be square") end if not (#{arg})is NonSquareMatrix, arg := Argument('Please provide a non-square matrices')[*], then #{}end until (matrixB by ref).all? { |s| s =~ /^\d+$/ }, return -1
  
  unless result.size == matrixA._rows * ((args.last) + 2), fail("Result size does not match the multiplication of dimensions") end, Matrix[*](result)[0..matrixB.[@_index]&(_columns-3)] = (Matrix[[Int64][1...matrixEigenValue], args]) # Perform matrix multiplication operation
  ```  // Here's a general idea on how to write the code. You may need more specific handling for each case in your program, such as error checking and performance optimization based upon requirements of user inputs etc.. This is just pseudocode without any comments or explanations about it so you should understand what exactly this line does before using