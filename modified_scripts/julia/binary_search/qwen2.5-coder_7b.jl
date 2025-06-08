```julia
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
```