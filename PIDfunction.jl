function PIDgraph(n, t , s)
    srpide6 = collect(get_partial_information_decomposition(n, t, s))
    srpide65 = collect(get_partial_information_decomposition(nr_e65, tr_e65, sr_e65))
    srpide7 = collect(get_partial_information_decomposition(nr_e7, tr_e7, sr_e7))
    srpide75 = collect(get_partial_information_decomposition(nr_e75, tr_e75, sr_e75))

    #convert to array of only the second value i.e. only the numbers (v)
    srpide6 = [(v) for (k,v) in srpide6]
    srpide65 = [(v) for (k,v) in srpide65]
    srpide7 = [(v) for (k,v) in srpide7]
    srpide75 = [(v) for (k,v) in srpide75]


    srredundancy = [srpide6[1], srpide65[1], srpide7[1], srpide75[1]]
    srunique_2 = [srpide6[2], srpide65[2], srpide7[2], srpide75[2]]
    srsynergy = [srpide6[3], srpide65[3], srpide7[3], srpide75[3]]
    srunique_1 = [srpide6[4], srpide65[4], srpide7[4], srpide75[4]]

    display(plot(["E6", "E6.5", "E7", "E7.5" ], [srredundancy, srunique_2, srsynergy, srunique_1], xlabel = "TimePoint", label = ["Redundancy" "Unique for T + Sox2" "Synergy" "Unique for Nanog + Sox2"], legend = false, title = "Sox2 as Target Bayesian Blocks"))
end