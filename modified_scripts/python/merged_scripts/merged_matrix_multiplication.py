
# gemma_2b CODE

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

# qwen3_8b CODE
def matrix_mult(a, b):
    n = len(a)
    m = len(b[0])
    p = len(b)
    result = [[0]*m for _ in range(n)]
    for i in range(n):
        for j in range(m):
            for k in range(p):
                result[i][j] += a[i][k] * b[k][j]
    return result
# deepseek-coder_1_3b CODE
def multiply(matrix1, matrix2): 
    rows_A = len(matrix1)                 
    cols_B  =len(matrix2[0])   
    res = [[0]*cols_B for _ in range(rows_A)] 
    
      
    for i in range(rows_A):  
        for k in range(cols_B):  
            res[i][k] += matrix1[i][j] * matrix2[j][k]  if j=='all'(or no indexing, depending on requirements and when using a loop inside the condition. This is to allow rows for first MAtrix A with columns of second Matrix B.)
    return res     

# qwen2_5-coder_3b CODE

def matrix_multiply(A, B):
    if len(A[0]) != len(B):
        raise ValueError("Number of columns in A must be equal to number of rows in B")
    
    result = [[0] * len(B[0]) for _ in range(len(A))]
    
    for i in range(len(A)):
        for j in range(len(B[0])):
            for k in range(len(B)):
                result[i][j] += A[i][k] * B[k][j]
    
    return result

# qwen3_1_7b CODE
def matrix_mult(a, b):
    return [[sum(a[row][col - i] for row in range(len(a))) for col in range(len(b[0]))] for i in range(len(a))]
# qwen2_5-coder_7b CODE

def matrix_multiplication(a, b):
    result = [[0 for _ in range(len(b[0]))] for _ in range(len(a))]
    for i in range(len(a)):
        for j in range(len(b[0])):
            for k in range(len(b)):
                result[i][j] += a[i][k] * b[k][j]
    return result

# deepseek-coder_6_7b CODE


def matrix_multiplication(A, B):
    result = []
    for i in range(len(A)):
        row = []
        for j in range(len(B[0])):
            sum = 0
            for k in range(len(B)):
                sum += A[i][k] * B[k][j]
            row.append(sum)
        result.append(row)
    return result

# gemma_7b CODE

def matrix_multiplication(matrix1, matrix2):
    if len(matrix1[0]) != len(matrix2):
        raise ValueError("Matrices are not compatible for multiplication.")

    result = [[0 for _ in range(len(matrix2))] for _ in range(len(matrix1))]

    for i in range(len(matrix1)):
        for j in range(len(matrix2)):
            for k in range(len(matrix1[0])):
                result[i][j] += matrix1[i][k] * matrix2[k][j]

    return result
