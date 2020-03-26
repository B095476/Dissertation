using Discretizers

# call with e.g. histogrambayesianblocks(n_e65, "Nanog E6.5 Bayesian Blocks")
function replicatehistogrambayesianblocks(values_x, titlex)
    frequency = discretize_values(values_x, mode = "bayesian_blocks")
    edges = binedges(DiscretizeBayesianBlocks(), values_x)
    println(edges)
    println(frequency)
    histogram(values_x, xlabel="Expression", ylabel="Frequency", color=:lightblue, label = "Normal width bins")
    plot!(edges[1:end-1], frequency, linetype=:stepost, color = :black, title = titlex, label = "Bayesian blocks") # need to remove 2 labels for bayesian blocks 
    plot!(edges[2:end], frequency, linetype=:steppre, color = :black, xaxis = "Expression", yaxis = "Frequency", label = "Bayesian blocks", legend = false)
end 

function displayhistogrambayesianblocks()

    # display(histogrambayesianblocks(nr_e6, "Nanog E6"))
    # display(histogrambayesianblocks(nr_e65, "Nanog E6.5 Bayesian Blocks"))
    # display(histogrambayesianblocks(nr_e7, "Nanog E7 Bayesian Blocks"))
    # display(histogrambayesianblocks(nr_e75, "Nanog E7.5 Bayesian Blocks"))

    # display(histogrambayesianblocks(tr_e6, "T E6 Bayesian Blocks"))
    # display(histogrambayesianblocks(tr_e65, "T E6.5 Bayesian Blocks"))
    # display(histogrambayesianblocks(tr_e7, "T E7 Bayesian Blocks"))
    # display(histogrambayesianblocks(tr_e75, "T E7.5 Bayesian Blocks"))

    # display(histogrambayesianblocks(sr_e6, "Sox2 E6 Bayesian Blocks"))
    # display(histogrambayesianblocks(sr_e65, "Sox2 E6.5 Bayesian Blocks"))
    # display(histogrambayesianblocks(sr_e7, "Sox2 E7 Bayesian Blocks"))
    # display(histogrambayesianblocks(sr_e75, "Sox2 E7.5 Bayesian Blocks"))
end