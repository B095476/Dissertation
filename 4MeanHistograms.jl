using Discretizers

# call with e.g. histogrambayesianblocks(n_e65, "Nanog E6.5 Bayesian Blocks", :purple)
function histogrambayesianblocks(values_x, titlex, x)
    frequency = discretize_values(values_x, mode = "bayesian_blocks")
    edges = binedges(DiscretizeBayesianBlocks(), values_x)
    println(edges)
    println(frequency)
    histogram(values_x, xlabel="Expression", ylabel="Frequency", color=x, label = "Uniform width bins")
    plot!(edges[1:end-1], frequency, linetype=:steppost, color = :black, title = titlex, label = "Bayesian blocks") 
    plot!(edges[2:end], frequency, linetype=:steppre, color = :black, xaxis = "Expression", yaxis = "Frequency", label = "Bayesian blocks", legend = false)
end 

function histogrambayesianblocksx(values_x, titlex, x)
    frequency = discretize_values(values_x, mode = "bayesian_blocks")
    edges = binedges(DiscretizeBayesianBlocks(), values_x)
    println(edges)
    println(frequency)
    f = Float64(frequency[1])
    f = [0, f, 0]
    histogram(values_x, xlabel="Expression", ylabel="Frequency", color=x, label = "Uniform width bins")
    plot!([edges], [f[1:2]], linetype=:steppre, color = :black, title = titlex, label = "Bayesian blocks") 
    plot!([edges], [f[2:3]], linetype=:steppost, color = :black, legend = false) 

end 

# calls all functions to display the histograms for each time point
function displayhistogrambayesianblocks()

    display(histogrambayesianblocksx(n_e6, "Nanog E6", :purple))
    display(histogrambayesianblocksx(n_e65, "Nanog E6.5 Bayesian Blocks", :purple))
    display(histogrambayesianblocks(n_e7, "Nanog E7 Bayesian Blocks", :purple))
    display(histogrambayesianblocks(n_e75, "Nanog E7.5 Bayesian Blocks", :purple))

    display(histogrambayesianblocks(t_e6, "T E6 Bayesian Blocks", :yellow))
    display(histogrambayesianblocks(t_e65, "T E6.5 Bayesian Blocks", :yellow))
    display(histogrambayesianblocks(t_e7, "T E7 Bayesian Blocks", :yellow))
    display(histogrambayesianblocks(t_e75, "T E7.5 Bayesian Blocks", :yellow))

    display(histogrambayesianblocksx(s_e6, "Sox2 E6 Bayesian Blocks", :lightblue))
    display(histogrambayesianblocks(s_e65, "Sox2 E6.5 Bayesian Blocks", :lightblue))
    display(histogrambayesianblocks(s_e7, "Sox2 E7 Bayesian Blocks", :lightblue))
    display(histogrambayesianblocks(s_e75, "Sox2 E7.5 Bayesian Blocks", :lightblue))
end