```python
def fibonacci(n):
    """
    Returns the nth number in the Fibonacci sequence.

    Args:
        n (int): The index of the Fibonacci number to return.

    Returns:
        int: The nth Fibonacci number.
    """

    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)
```