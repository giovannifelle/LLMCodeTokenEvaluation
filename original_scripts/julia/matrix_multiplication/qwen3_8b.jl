function matrix_mult(A, B)
    m, n = size(A)
    n2, p = size(B)
    C = zeros(eltype(A), m, p)
    for i in 1:m
        for j in 1:p
            for k in 1:n
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end