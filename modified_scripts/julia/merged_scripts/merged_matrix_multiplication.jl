
# qwen3_1_7b CODE
function matrix_multiplication(A, B)
    m = size(A, 1)
    n = size(A, 2)
    p = size(B, 2)
    C = zeros(m, p)
    for i in 1:m
        for j in 1:n
            sum = 0
            for k in 1:n
                sum += A[i, k] * B[k, j]
            end
            C[i, j] = sum
        end
    end
    return C
end
# qwen2_5-coder_7b CODE

function matrix_multiplication(A::Matrix{Float64}, B::Matrix{Float64})::Matrix{Float64}
    C = zeros(size(A, 1), size(B, 2))
    for i in 1:size(A, 1)
        for j in 1:size(B, 2)
            for k in 1:size(A, 2)
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end

# qwen3_8b CODE
function matrix_mult(A, B)
    m, n = size(A)
    n2, p = size(B)
    C = zeros(eltype(A), m, p)
    for i in 1:m
        for j in 1:p
            for k in 1:n
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end
# gemma_2b CODE

function matrix_multiplication(matrix1, matrix2)
    result = zeros(size(matrix1, 1), size(matrix2, 1))
    for i = 1:size(matrix1, 1)
        for j = 1:size(matrix2, 1)
            for k = 1:size(matrix1, 1)
                result[i, j] = result[i, j] + matrix1[i, k] * matrix2[k, j]
            end
        end
    end
    return result
end

# deepseek-coder_1_3b CODE

function matrix_multiplication(A::Array{Float64},B::AbstractArray)
    
	n = size(A,1)  	
	
    
	@assert length(B[1]) == n  	
	
    
	c = similar(A)	
	    			
	    			
	    			
	    			
end 


# gemma_7b CODE

function matrix_multiplication(A, B)
    if size(A, 2) !== size(B, 1)
        throw("Matrices are not compatible for multiplication")
    end
    C = zeros(size(A, 1), size(B, 2))
    for i = 1:size(A, 1)
        for j = 1:size(B, 2)
            for k = 1:size(A, 2)
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end

# deepseek-coder_6_7b CODE

function matrix_multiplication(A::AbstractMatrix{T}, B::AbstractMatrix{T}) where {T <: Number}
    m, p = size(A)
    n, q = size(B)
    
    @assert p == n "First matrix column dimension must equal second matrix row dimension"

    C = similar(A, T, m, q)
    for i = 1:m
        for j = 1:q
            C[i,j] = sum(A[i,k]*B[k,j] for k = 1:p)
        end
    end
    
    return C
end

# qwen2_5-coder_3b CODE

function multiply_matrices(A::Matrix{Float64}, B::Matrix{Float64})::Matrix{Float64}
    rows_A, cols_A = size(A)
    rows_B, cols_B = size(B)

    if cols_A != rows_B
        throw(DimensionMismatch("Number of columns in A must be equal to number of rows in B"))
    end

    C = zeros(rows_A, cols_B)

    for i in 1:rows_A
        for j in 1:cols_B
            for k in 1:cols_A
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end

    return C
end
