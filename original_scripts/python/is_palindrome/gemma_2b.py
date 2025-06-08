```python
def is_palindrome(word):
    """
    Checks if a word is a palindrome.

    A palindrome is a word that reads the same backward as forward.

    Args:
        word (str): The word to check.

    Returns:
        bool: True if the word is a palindrome, False otherwise.
    """

    return word == word[::-1]
```