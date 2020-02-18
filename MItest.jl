using InformationMeasures
x = 0.8112781244591328 + 0.8112781244591328
println(apply_mutual_information_formula(0.8112781244591328, 0.8112781244591328, x))


function mi_quick(data; discretizer = "uniform_width", estimator = "maximum_likelihood", mi_base = 2)

	nvals, nvars = size(data)

	bin_ids = zeros(Int, (nvals, nvars))
	nbins = Int(round(sqrt(nvals)))
	mis = zeros(binomial(nvars, 2))

	for i in 1 : nvars
		get_bin_ids!(data[1:nvals, i:i], discretizer, nbins, view(bin_ids, 1:nvals, i:i))
	end

	index = 1
	for i in 1 : nvars, j in i+1 : nvars
		f = get_frequencies_from_bin_ids(bin_ids[1:end, i:i], bin_ids[1:end, j:j], nbins, nbins)
		p = get_probabilities(estimator, f)
		mis[index] = apply_mutual_information_formula(p, sum(p, dims = 1), sum(p, dims = 2), mi_base)
		index += 1
	end

	return mis

end