#Calculate and plot PID for Sox2 as the target
#calculate PID and convert from dictionary
srpide6 = collect(get_partial_information_decomposition(nr_e6, tr_e6, sr_e6, mode = "bayesian_blocks"))
srpide65 = collect(get_partial_information_decomposition(nr_e65, tr_e65, sr_e65, mode = "bayesian_blocks"))
srpide7 = collect(get_partial_information_decomposition(nr_e7, tr_e7, sr_e7, mode = "bayesian_blocks"))
srpide75 = collect(get_partial_information_decomposition(nr_e75, tr_e75, sr_e75, mode = "bayesian_blocks"))

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


#Calculate and plot PID for Nanog as the target
#calculate PID and convert from dictionary
nrpide6 = collect(get_partial_information_decomposition(sr_e6, tr_e6, nr_e6, mode = "bayesian_blocks"))
nrpide65 = collect(get_partial_information_decomposition(sr_e65, tr_e65, nr_e65, mode = "bayesian_blocks"))
nrpide7 = collect(get_partial_information_decomposition(sr_e7, tr_e7, nr_e7, mode = "bayesian_blocks"))
nrpide75 = collect(get_partial_information_decomposition(sr_e75, tr_e75, nr_e75, mode = "bayesian_blocks"))

#convert to array of only the second value i.e. only the numbers (v)
nrpide6 = [(v) for (k,v) in nrpide6]
nrpide65 = [(v) for (k,v) in nrpide65]
nrpide7 = [(v) for (k,v) in nrpide7]
nrpide75 = [(v) for (k,v) in nrpide75]


nrredundancy = [nrpide6[1], nrpide65[1], nrpide7[1], nrpide75[1]]
nrunique_2 = [nrpide6[2], nrpide65[2], nrpide7[2], nrpide75[2]]
nrsynergy = [nrpide6[3], nrpide65[3], nrpide7[3], nrpide75[3]]
nrunique_1 = [nrpide6[4], nrpide65[4], nrpide7[4], nrpide75[4]]

display(plot(["E6", "E6.5", "E7", "E7.5" ], [nrredundancy, nrunique_2, nrsynergy, nrunique_1], xlabel = "TimePoint", label = ["Redundancy" "Unique for T + Nanog" "Synergy" "Unique for Sox2 + Nanog" ], title = "Nanog as target Bayesian Blocks"))


#Calculate and plot PID for T as the target
#calculate PID and convert from dictionary
trpide6 = collect(get_partial_information_decomposition(nr_e6, sr_e6, tr_e6, mode = "bayesian_blocks"))
trpide65 = collect(get_partial_information_decomposition(nr_e65, sr_e65, tr_e65, mode = "bayesian_blocks"))
trpide7 = collect(get_partial_information_decomposition(nr_e7, sr_e7, tr_e7, mode = "bayesian_blocks"))
trpide75 = collect(get_partial_information_decomposition(nr_e75, sr_e75, tr_e75, mode = "bayesian_blocks"))

#convert to array of only the second value i.e. only the numbers (v)
trpide6 = [(v) for (k,v) in trpide6]
trpide65 = [(v) for (k,v) in trpide65]
trpide7 = [(v) for (k,v) in trpide7]
trpide75 = [(v) for (k,v) in trpide75]

# Create arrays of Redundancy, Unique2, Synergy and Unique1
trredundancy = [trpide6[1], trpide65[1], trpide7[1], trpide75[1]]
trunique_2 = [trpide6[2], trpide65[2], trpide7[2], trpide75[2]]
trsynergy = [trpide6[3], trpide65[3], trpide7[3], trpide75[3]]
trunique_1 = [trpide6[4], trpide65[4], trpide7[4], trpide75[4]]

# Display plot of PID at different time points 
display(plot(["E6", "E6.5", "E7", "E7.5" ], [trredundancy, trunique_2, trsynergy, trunique_1], xlabel = "TimePoint", label = ["Redundancy" "Unique for Sox2 + T" "Synergy" "Unique for Nanog + T"], title = "T as target Bayesian Blocks"))