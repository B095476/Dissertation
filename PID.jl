#Calculate and plot PID for Sox2 as the target
#calculate PID and convert from dictionary
spide6 = collect(get_partial_information_decomposition(n_e6, t_e6, s_e6))
spide65 = collect(get_partial_information_decomposition(n_e65, t_e65, s_e65))
spide7 = collect(get_partial_information_decomposition(n_e7, t_e7, s_e7))
spide75 = collect(get_partial_information_decomposition(n_e75, t_e75, s_e75))

#convert to array of only the second value i.e. only the numbers (v)
spide6 = [(v) for (k,v) in spide6]
spide65 = [(v) for (k,v) in spide65]
spide7 = [(v) for (k,v) in spide7]
spide75 = [(v) for (k,v) in spide75]


sredundancy = [spide6[1], spide65[1], spide7[1], spide75[1]]
sunique_1 = [spide6[2], spide65[2], spide7[2], spide75[2]]
ssynergy = [spide6[3], spide65[3], spide7[3], spide75[3]]
sunique_2 = [spide6[4], spide65[4], spide7[4], spide75[4]]

display(plot(["E6", "E6.5", "E7", "E7.5" ], [sredundancy, sunique_1, ssynergy, sunique_2], xlabel = "TimePoint", label = ["Redundancy" "Unique 1" "Synergy" "Unique 2"], title = "Sox2 as target"))


#Calculate and plot PID for Nanog as the target
#calculate PID and convert from dictionary
npide6 = collect(get_partial_information_decomposition(s_e6, t_e6, n_e6))
npide65 = collect(get_partial_information_decomposition(s_e65, t_e65, n_e65))
npide7 = collect(get_partial_information_decomposition(s_e7, t_e7, n_e7))
npide75 = collect(get_partial_information_decomposition(s_e75, t_e75, n_e75))

#convert to array of only the second value i.e. only the numbers (v)
npide6 = [(v) for (k,v) in npide6]
npide65 = [(v) for (k,v) in npide65]
npide7 = [(v) for (k,v) in npide7]
npide75 = [(v) for (k,v) in npide75]


nredundancy = [npide6[1], npide65[1], npide7[1], npide75[1]]
nunique_1 = [npide6[2], npide65[2], npide7[2], npide75[2]]
nsynergy = [npide6[3], npide65[3], npide7[3], npide75[3]]
nunique_2 = [npide6[4], npide65[4], npide7[4], npide75[4]]

display(plot(["E6", "E6.5", "E7", "E7.5" ], [nredundancy, nunique_1, nsynergy, nunique_2], xlabel = "TimePoint", label = ["Redundancy" "Unique 1" "Synergy" "Unique 2"], title = "Nanog as target"))


#Calculate and plot PID for T as the target
#calculate PID and convert from dictionary
tpide6 = collect(get_partial_information_decomposition(n_e6, s_e6, t_e6))
tpide65 = collect(get_partial_information_decomposition(n_e65, s_e65, t_e65))
tpide7 = collect(get_partial_information_decomposition(n_e7, s_e7, t_e7))
tpide75 = collect(get_partial_information_decomposition(n_e75, s_e75, t_e75))

#convert to array of only the second value i.e. only the numbers (v)
tpide6 = [(v) for (k,v) in tpide6]
tpide65 = [(v) for (k,v) in tpide65]
tpide7 = [(v) for (k,v) in tpide7]
tpide75 = [(v) for (k,v) in tpide75]


tredundancy = [tpide6[1], tpide65[1], tpide7[1], tpide75[1]]
tunique_1 = [tpide6[2], tpide65[2], tpide7[2], tpide75[2]]
tsynergy = [tpide6[3], tpide65[3], tpide7[3], tpide75[3]]
tunique_2 = [tpide6[4], tpide65[4], tpide7[4], tpide75[4]]

display(plot(["E6", "E6.5", "E7", "E7.5" ], [tredundancy, tunique_1, tsynergy, tunique_2], xlabel = "TimePoint", label = ["Redundancy" "Unique 1" "Synergy" "Unique 2"], title = "T as target"))