
# qwen3_1_7b CODE
def fibonacci(n: Int): Int = {
  if (n <= 1) 0 else fibonacci(n - 1) + fibonacci(n - 2)
}
# deepseek-coder_6_7b CODE

def fib(n: Int): Int = {
  @annotation.tailrec
  def go(n: Int, a: Int, b: Int): Int = n match {
    case x if x <= 0 => a
    case _            => go(n - 1, b, a + b)
  }
  
  go(n, 0, 1)
}

# qwen2_5-coder_7b CODE

def fibonacci(n: Int): Int = {
  @annotation.tailrec
  def loop(a: Int, b: Int, count: Int): Int =
    if (count == n) a else loop(b, a + b, count + 1)
  loop(0, 1, 0)
}

# gemma_2b CODE

object Fibonacci {

  def fibonacci(n: Int): Int = {
    if (n <= 1) {
      return n
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
  }
}

# qwen3_8b CODE
def fib(n: Int): Int = if (n <= 1) n else fib(n - 1) + fib(n - 2)
# gemma_7b CODE

object Fibonacci {
  def apply(n: Int): Int = {
    if (n < 2) {
      n
    } else {
      apply(n - 1) + apply(n - 2)
    }
  }
}

# deepseek-coder_1_3b CODE

object fib {
   def main(args: Array[String]) ={
      println("Fibonacci value for first position is " + fib(1)) 
      
   }   
        
 def fib (n : Int) : Int = {             #define a method 'fib' that takes one parameter, n of type Integer which is an integer for FIBONACCI SERIES and returns another int result i.e., the calculated value  . For example if we call `Fib(3), it will calculate fibonacci series by calling itself to get previous two numbers then add them up as per position in our sequence
     n match {                           #match case for 'n' ,it is used only with pattern matching feature provided scala.
       
        
        | 0 => 0                          #base cases: when the input is 0 => return zero   
        | 1 => 1                          #when the input is 2 => return one    .For e, fib (0)=>Fibonacci series's first term ie,'n'. So if we call `fib(3), it will calculate "first"term of FIBONACCI SERIES by calling itself to get previous two numbers and add them up as per position in our sequence.
        | _ => fib (n - 1) + fib (n-2 ) #the recursive case: when the input is greater than one, then call `fib` method on parameters n minus both ones with decreasing values of 'n' till it reaches base cases ie zero or negative numbers and return result.
     }    
} 
# qwen2_5-coder_3b CODE

object Fibonacci {
  def fib(n: Int): Int = {
    if (n <= 1) n else fib(n - 1) + fib(n - 2)
  }
}
