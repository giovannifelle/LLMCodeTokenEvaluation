Here is the pure source code for a Fibonacci algorithm in Scala:

```scala
def fib(n: Int): Int = {
  @annotation.tailrec
  def go(n: Int, a: Int, b: Int): Int = n match {
    case x if x <= 0 => a
    case _            => go(n - 1, b, a + b)
  }
  
  go(n, 0, 1)
}
```