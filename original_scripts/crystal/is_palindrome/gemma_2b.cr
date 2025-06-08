```crystal
def is_palindrome(word):
    """
    Checks if a given word is a palindrome.

    Args:
        word (str): The word to check.

    Returns:
        bool: True if the word is a palindrome, False otherwise.
    """

    return word == word[::-1]
```