
def fibonacci(n: Int): Int = {
  @annotation.tailrec
  def loop(a: Int, b: Int, count: Int): Int =
    if (count == n) a else loop(b, a + b, count + 1)
  loop(0, 1, 0)
}
