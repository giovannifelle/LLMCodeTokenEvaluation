
function binary_search(arr::Array{T}, x) where T <: Real 
    low = 1   
    high = length(arr) 
    while high > low 
        mid = div((low + high),2 )
        print("low is $(low), high is  $high") 
    end  		
end   
