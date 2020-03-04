using Discretizers

function histogrambayesianblocks(values_x, titlex)
    frequency = discretize_values(values_x, mode = "bayesian_blocks")
    edges = binedges(DiscretizeBayesianBlocks(), values_x)
    println(edges)
    println(frequency)
    plot(edges[1:end-1], frequency, linetype=:steppost, color = :purple, title = titlex)
    plot!(edges[2:end], frequency, linetype=:steppre, color = :purple, legend = false, xaxis = "Expression", yaxis = "Frequency")
end 