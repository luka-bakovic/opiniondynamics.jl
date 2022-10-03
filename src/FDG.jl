# French-DeGroot concensus model simulation
# TODO: make it work for graphs of size n


# we require nothing but a weight matrix 
struct FrenchDeGroot
    W :: AbstractArray{Float64, 2}
end

function runDynamics!(M::FrenchDeGroot, x0::AbstractVector, nsteps::Int)
    @assert size(M.W, 2) == size(x0, 1) "Initial state vector is not of the right dimension!"

    # I am aware that this is extremly poor memory management
    # mea culpa
    x0 = convert(Vector{Float64}, x0)

    w = M.W * ones(size(M.W,2))
    D = LinearAlgebra.diagm(w)
    D .= LinearAlgebra.inv(D) * M.W

    for i = 1:nsteps
        x0 .= D * x0
    end

    return x0

end