function matrix_multiplication(A, B)
    m = size(A, 1)
    n = size(A, 2)
    p = size(B, 2)
    C = zeros(m, p)
    for i in 1:m
        for j in 1:n
            sum = 0
            for k in 1:n
                sum += A[i, k] * B[k, j]
            end
            C[i, j] = sum
        end
    end
    return C
end