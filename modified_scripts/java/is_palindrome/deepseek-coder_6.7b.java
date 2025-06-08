Sure, here is the Java code for an algorithm that checks if a string is a palindrome without using comments:

```java
public class Palindrome {
    public static boolean isPalindrome(String str) {
        int i = 0;
        int j = str.length() - 1;
        
        while (i < j) {
            if (str.charAt(i++) != str.charAt(j--)) return false;
        }
        
        return true;
    }
}
```
This code defines a class `Palindrome` with a static method `isPalindrome()` that takes a string as input and returns a boolean indicating whether the string is a palindrome. The logic of the algorithm is contained within this function: it checks characters from both ends towards the center, returning false if any pair of corresponding characters are not equal.