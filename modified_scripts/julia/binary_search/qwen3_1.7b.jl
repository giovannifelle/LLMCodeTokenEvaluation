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