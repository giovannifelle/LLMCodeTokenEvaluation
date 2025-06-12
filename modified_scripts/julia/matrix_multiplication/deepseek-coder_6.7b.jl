
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
