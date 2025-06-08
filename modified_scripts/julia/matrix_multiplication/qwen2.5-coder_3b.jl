Certainly! Here is a pure source code for the matrix multiplication algorithm in Julia:

```julia
function multiply_matrices(A::Matrix{Float64}, B::Matrix{Float64})::Matrix{Float64}
    rows_A, cols_A = size(A)
    rows_B, cols_B = size(B)

    if cols_A != rows_B
        throw(DimensionMismatch("Number of columns in A must be equal to number of rows in B"))
    end

    C = zeros(rows_A, cols_B)

    for i in 1:rows_A
        for j in 1:cols_B
            for k in 1:cols_A
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end

    return C
end
```