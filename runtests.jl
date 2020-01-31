# using NetworkInference
# # using LightGraphs
# network = infer_network("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", PIDCNetworkInference())
# adjacency_matrix = get_adjacency_matrix(network, 1.5; absolute = true)
# # graph = LightGraphs.SimpleGraphs.SimpleGraph(adjacency_matrix)


# using InformationMeasures
# using Test

# arr1 = rand(1000)
# arr2 = rand(1000)
# arr3 = rand(1000)

# # Variables are shared between these tests - don't re-order
# include("testDiscretization.jl")
# include("testEntropy.jl")
# include("testConditionalEntropy.jl")
# include("testMutualInformation.jl")
# include("testConditionalMutualInformation.jl")
# include("testInteractionInformation.jl")
# include("testTotalCorrelation.jl")
# include("testPartialInformationDecomposition.jl")
# include("testCrossEntropy.jl")