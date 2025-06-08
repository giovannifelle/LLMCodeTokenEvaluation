def matrix_mult(a, b):
    return [[sum(a[row][col - i] for row in range(len(a))) for col in range(len(b[0]))] for i in range(len(a))]