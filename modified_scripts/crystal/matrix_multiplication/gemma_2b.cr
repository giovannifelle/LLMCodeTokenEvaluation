```python
def matrix_multiplication(matrix1, matrix2):
    result = []
    for row1 in matrix1:
        row_result = []
        for row2 in matrix2:
            product = row1 * row2
            row_result.append(product)
        result.append(row_result)
    return result
```