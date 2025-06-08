
# ['gemma_2b'] CODE

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

# ['qwen3_8b'] CODE
def binary_search(arr, x):
    low = 0
    high = len(arr) - 1
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == x:
            return mid
        elif arr[mid] < x:
            low = mid + 1
        else:
            high = mid - 1
    return -1
# ['deepseek-coder_1', '3b'] CODE

def binary_search(arr, low, high, x):    
     
    if high >= low:         
        mid = (high + low) // 2  
              
  
        elif arr[mid] == x :           return mid     
            
    
        elif arr[mid] > x:          high = mid - 1  
             
        else:                   low = mid + 1   
                 
    else:               return -1      

# ['qwen2', '5-coder_3b'] CODE

def binary_search(nums, target):
    left, right = 0, len(nums) - 1
    while left <= right:
        mid = (left + right) // 2
        if nums[mid] == target:
            return mid
        elif nums[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return -1

# ['qwen3_1', '7b'] CODE
def binary_search(arr, x):
    left = 0
    right = len(arr) - 1
    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == x:
            return mid
        elif arr[mid] < x:
            left = mid + 1
        else:
            right = mid - 1
    return -1
# ['qwen2', '5-coder_7b'] CODE

def binary_search(arr, target):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1

    return -1

# ['deepseek-coder_6', '7b'] CODE

def binary_search(array, target):
    low = 0
    high = len(array) - 1

    while low <= high:
        mid = (low + high) // 2
        if array[mid] == target:
            return mid
        elif array[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
            
    return -1

# ['gemma_7b'] CODE

def binary_search(arr, target):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2

        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1

    return -1
