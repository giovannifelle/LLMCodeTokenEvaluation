```julia
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
```