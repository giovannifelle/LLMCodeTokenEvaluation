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