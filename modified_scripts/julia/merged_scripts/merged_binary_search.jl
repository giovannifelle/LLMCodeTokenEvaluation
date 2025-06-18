
# qwen3_1_7b CODE
function binary_search(arr, x)
    left = 1
    right = length(arr)
    while left <= right
        mid = (left + right) ÷ 2
        if arr[mid] == x
            return mid
        elseif arr[mid] < x
            left = mid + 1
        else
            right = mid - 1
        end
    end
    return -1
end
# qwen2_5-coder_7b CODE

function binary_search(arr::Vector{T}, x::T) where T
    low = 1
    high = length(arr)
    while low <= high
        mid = div(low + high, 2)
        if arr[mid] == x
            return mid
        elseif arr[mid] < x
            low = mid + 1
        else
            high = mid - 1
        end
    end
    return -1
end

# qwen3_8b CODE
function binary_search(arr, x)
    left = 1
    right = length(arr)
    while left <= right
        mid = left + (right - left) ÷ 2
        if arr[mid] == x
            return mid
        elseif arr[mid] < x
            left = mid + 1
        else
            right = mid - 1
        end
    end
    return 0
end
# gemma_2b CODE

function binary_search(nums, target)
    low = 1
    high = length(nums)

    while low <= high
        mid = floor((low + high) / 2)
        guess = nums[mid]

        if guess == target
            return(mid)
        elseif guess < target
            low = mid + 1
        else
            high = mid - 1

    return(-1)
end

# deepseek-coder_1_3b CODE

function binary_search(arr::Array{T}, x) where T <: Real 
    low = 1   
    high = length(arr) 
    while high > low 
        mid = div((low + high),2 )
        print("low is $(low), high is  $high") 
    end  		
end   

# gemma_7b CODE

function binary_search(arr, target)
    low = 1
    high = length(arr)

    while low <= high
        mid = (low + high) // 2
        if arr[mid] == target
            return mid
        elseif arr[mid] < target
            low = mid + 1
        else
            high = mid - 1
        end
    end

    return -1
end

# deepseek-coder_6_7b CODE

function binary_search(arr::Array{T}, target::T) where T <: Number
    low = 1
    high = length(arr)
    
    while low <= high
        mid = (low + high) ÷ 2
        
        if arr[mid] == target
            return true
        elseif arr[mid] < target
            low = mid + 1
        else
            high = mid - 1
        end
    end
    
    return false
end

# qwen2_5-coder_3b CODE

function binary_search(arr, target)
    low = 1
    high = length(arr)

    while low <= high
        mid = div(low + high, 2)

        if arr[mid] == target
            return mid
        elseif arr[mid] < target
            low = mid + 1
        else
            high = mid - 1
        end
    end

    return -1
end
