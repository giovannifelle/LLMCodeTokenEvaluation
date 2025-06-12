
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