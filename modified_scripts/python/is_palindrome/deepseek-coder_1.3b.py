def is_palindrome(string):
    length = 0
    while True:
        try:
            string[length]
        except IndexError:
            break
        length += 1
    return True
