Here is the source code for a basic palindrome checker in Crystal language without any comments or documentation:

```crystal
class String
  def is_palindrome?
    downcase == reverse.downcase
  end
end
```
This code defines an instance method `is_palindrome?` on the `String` class in Crystal that checks if a string is equal to its own reversed version (ignoring case). It's as simple and clean as it can get.