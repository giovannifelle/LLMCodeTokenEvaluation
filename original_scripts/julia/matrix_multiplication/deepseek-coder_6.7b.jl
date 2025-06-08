Sure, here is a simple implementation of matrix multiplication in Julia without comments and explanation:

```julia
function matrix_multiplication(A::AbstractMatrix{T}, B::AbstractMatrix{T}) where {T <: Number}
    m, p = size(A)
    n, q = size(B)
    
    @assert p == n "First matrix column dimension must equal second matrix row dimension"

    C = similar(A, T, m, q)
    for i = 1:m
        for j = 1:q
            C[i,j] = sum(A[i,k]*B[k,j] for k = 1:p)
        end
    end
    
    return C
end
```
This function takes in two matrices `A` and `B` as arguments. The multiplication is performed using a nested loop where each element of the resulting matrix is calculated by summing products from corresponding elements in the input matrices. Note that this implementation uses 1-based indexing for clarity, but it could be adapted to use 0-based indexing if needed.