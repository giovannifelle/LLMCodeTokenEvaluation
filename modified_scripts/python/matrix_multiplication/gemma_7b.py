
def matrix_multiplication(matrix1, matrix2):
    if len(matrix1[0]) != len(matrix2):
        raise ValueError("Matrices are not compatible for multiplication.")

    result = [[0 for _ in range(len(matrix2))] for _ in range(len(matrix1))]

    for i in range(len(matrix1)):
        for j in range(len(matrix2)):
            for k in range(len(matrix1[0])):
                result[i][j] += matrix1[i][k] * matrix2[k][j]

    return result
