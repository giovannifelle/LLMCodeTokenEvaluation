```java
public class Fibonacci {

    public int calculate(int n) {
        if (n < 2) {
            return n;
        }
        return calculate(n - 1) + calculate(n - 2);
    }

}
```