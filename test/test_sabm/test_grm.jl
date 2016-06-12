include("../../src/SnpArrays.jl")

module SnpArraysTest

using SnpArrays

if VERSION >= v"0.5.0-dev+7720"
    using Base.Test
else
    using BaseTestNext
    const Test = BaseTestNext
end

sa = SnpArrayBM("/home/huwenbo/Huwenbo/merge-geno")
gc()
@time grm(sa)
gc()

end