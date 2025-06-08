```julia
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
```