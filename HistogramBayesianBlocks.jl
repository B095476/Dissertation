using Discretizers
macro Name(arg)
    x = string(arg)
    quote
        $x
    end
end

function histogrambayesianblocks(values_x)
    frequency = discretize_values(values_x, mode = "bayesian_blocks")
    edges = binedges(DiscretizeBayesianBlocks(), values_x)
    println(@Name(values_x))
    a = @Name(values_x)
    bar(edges, frequency, title = a)
end 
