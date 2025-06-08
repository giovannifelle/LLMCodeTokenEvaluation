```julia
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
```