
# ['gemma_2b'] CODE

def fibonacci(n):

    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)

# ['qwen3_8b'] CODE
def fibonacci(n):
    a b = 0 1
    for _ in range(n):
        a b = b a + b
    return a
# ['deepseek-coder_1', '3b'] CODE
def fib(n):  
    if n <= 1:     
       return n     
    else :          
        return fib(n-1) + fib(n-2);    

# ['qwen2', '5-coder_3b'] CODE

def fib(n):
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        a, b = 0, 1
        for _ in range(2, n + 1):
            a, b = b, a + b
        return b

# ['qwen3_1', '7b'] CODE
def fib(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a
# ['qwen2', '5-coder_7b'] CODE

def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a

# ['deepseek-coder_6', '7b'] CODE
def fibonacci(n):
    if n <= 0:
        return []
    elif n == 1:
        return [0]
    elif n == 2:
        return [0, 1]
    else:
        sequence = [0, 1]
        while len(sequence) < n:
            sequence.append(sequence[-1] + sequence[-2])
        return sequence
# ['gemma_7b'] CODE

def fib(n):
    if n < 2:
        return n
    else:
        return fib(n-1) + fib(n-2)
