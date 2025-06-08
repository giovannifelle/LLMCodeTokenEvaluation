```julia
function matrix_multiplication(A::Matrix{Float64}, B::Matrix{Float64})::Matrix{Float64}
    C = zeros(size(A, 1), size(B, 2))
    for i in 1:size(A, 1)
        for j in 1:size(B, 2)
            for k in 1:size(A, 2)
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end
```