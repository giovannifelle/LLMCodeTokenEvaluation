```scala
object Fibonacci {
  def apply(n: Int): Int = {
    if (n < 2) {
      n
    } else {
      apply(n - 1) + apply(n - 2)
    }
  }
}
```