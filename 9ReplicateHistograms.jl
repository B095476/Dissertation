using Discretizers

# call with e.g. histogrambayesianblocks(n_e65, "Nanog E6.5", :purple)
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

function displayhistogrambayesianblocks()
    display(histogrambayesianblocks(nr_e6, "Nanog E6", :purple))
    display(histogrambayesianblocksx(nr_e65, "Nanog E6.5", :purple))
    display(histogrambayesianblocks(nr_e7, "Nanog E7", :purple))
    display(histogrambayesianblocks(nr_e75, "Nanog E7.5", :purple))

    display(histogrambayesianblocks(tr_e6, "T E6", :yellow))
    display(histogrambayesianblocks(tr_e65, "T E6.5", :yellow))
    display(histogrambayesianblocks(tr_e7, "T E7", :yellow))
    display(histogrambayesianblocks(tr_e75, "T E7.5", :yellow))

    display(histogrambayesianblocks(sr_e6, "Sox2 E6", :lightblue))
    display(histogrambayesianblocks(sr_e65, "Sox2 E6.5", :lightblue))
    display(histogrambayesianblocks(sr_e7, "Sox2 E7", :lightblue))
    display(histogrambayesianblocks(sr_e75, "Sox2 E7.5", :lightblue))
end