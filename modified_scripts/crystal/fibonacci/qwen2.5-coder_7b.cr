```crystal
def fibonacci(n : Int32) : Int32
  return n if n <= 1
  a = 0
  b = 1
  (2..n).each do |i|
    temp = a + b
    a = b
    b = temp
  end
  b
end
```