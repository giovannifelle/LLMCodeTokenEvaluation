Sure! Here is the source code for a simple implementation of Fibonacci sequence in Python using recursion without memoization (i.e., storing previously calculated results):

```python
def fib(n):  # defining function to calculate nth term of Fabonaci series  
    if n <= 1:     # base cases - when the input is either zero or one, return that number as output value i.e at position '0' and '1'.
       return n     
    else :          # recursive case for calculating Fiboacci sequence  (excluding both first two terms)  
        return fib(n-1) + fib(n-2);    
```        
You can call this function with a specific number to get that term of the series. For example, `fib(9)` would give you '34'.  This is because Fibonacci sequence starts from [0][1] and each subsequent integer after are calculated by adding up two previous ones in terms of their index positions:
```python
print (fib(6)) # prints "5" which corresponds to the sixth term on fib series.   Outputs 8, because first few numbers is as follows : [0 ,1, 1, 2,3, 5] then it will add up last two terms in following way:
print (fib(7)) # prints "13" which corresponds to the seventh term on fib series. Outputs '18' because first few numbers is as follows : [0 ,1, 1,2,  3,,5] and it will add up last two terms in following way:
```         `      ``      .    '''         ...     ......'''. ''... etc., (in above cases) 'nth' term of the sequence is obtained by calling function with a specified number.  For example, `fib(9); # prints "34" which corresponds to ninth index on fib series`