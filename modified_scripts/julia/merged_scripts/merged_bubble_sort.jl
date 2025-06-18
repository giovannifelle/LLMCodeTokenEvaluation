
# qwen3_1_7b CODE
function bubble_sort(arr)
    n = length(arr)
    for i in 1:n-1
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end
# qwen2_5-coder_7b CODE

function bubble_sort(arr)
    n = length(arr)
    for i in 1:n-1
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end

# qwen3_8b CODE
function bubble_sort!(arr)
    n = length(arr)
    for i in 1:n-1
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end
# gemma_2b CODE

function bubble_sort(nums)
    for i = 1, length(nums)
        for j = i, length(nums)
            if nums[j] <= nums[j - 1]
                swap(nums, i, j)
            end
        end
        i = i + 1
    end
    return nums
end

function swap(nums, i, j)
    temp = nums[i]
    nums[i] = nums[j]
    nums[j] = temp
end

# deepseek-coder_1_3b CODE

function bubble_sort(arr) 
    n = length(arr)          
    
    while n > 1  
        temp = 0      
        
        
        for j in range(start=n-temp):         
             if arr[j] > arr[j + 1];            
                 arr[j],arr[j + 1] = arr[j +  1 ], arr[i]; 
             else;                               
             
             j += 1;                             
        end   
        n -= temp;                             
    return arr                                   
end  

# gemma_7b CODE

function bubble_sort(arr)
  for i in 1:length(arr) - 1
    for j in 1:length(arr) - i
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end

  arr
end

# deepseek-coder_6_7b CODE

function bubble_sort(arr)
    n = length(arr)
    for i in 1:n-1
        swapped = false
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
                swapped = true
            end
        end
        if !swapped
            break
        end
    end
end

# qwen2_5-coder_3b CODE

function bubble_sort(arr)
    n = length(arr)
    for i = 1:n-1
        for j = 1:n-i-1
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end
