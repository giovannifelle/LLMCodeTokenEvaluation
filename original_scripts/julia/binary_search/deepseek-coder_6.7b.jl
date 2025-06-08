```julia
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
```