
function matrix_multiplication(A, B)
    if size(A, 2) !== size(B, 1)
        throw("Matrices are not compatible for multiplication")
    end
    C = zeros(size(A, 1), size(B, 2))
    for i = 1:size(A, 1)
        for j = 1:size(B, 2)
            for k = 1:size(A, 2)
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end
