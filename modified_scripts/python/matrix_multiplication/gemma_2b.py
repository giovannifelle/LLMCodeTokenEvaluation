
def matrix_multiplication(matrix1, matrix2):
    result_matrix = []
    for i in range(len(matrix1)):
        row1 = matrix1[i]
        for j in range(len(matrix2)):
            product = 0
            for k in range(len(matrix2[0])):
                product += row1[k] * matrix2[i][k]
            result_matrix.append(product)
        result_matrix.append([row1[-1] for row1 in matrix1])
    return result_matrix
