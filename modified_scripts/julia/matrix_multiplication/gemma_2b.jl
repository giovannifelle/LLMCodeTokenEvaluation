
function matrix_multiplication(matrix1, matrix2)
    result = zeros(size(matrix1, 1), size(matrix2, 1))
    for i = 1:size(matrix1, 1)
        for j = 1:size(matrix2, 1)
            for k = 1:size(matrix1, 1)
                result[i, j] = result[i, j] + matrix1[i, k] * matrix2[k, j]
            end
        end
    end
    return result
end
