```python
def binary_search(nums, target):
    left = 0
    right = len(nums) - 1

    while left <= right:
        mid = (left + right) // 2
        guess = nums[mid]

        if guess == target:
            return mid
        elif guess < target:
            left = mid + 1
        else:
            right = mid - 1

    return -1
```