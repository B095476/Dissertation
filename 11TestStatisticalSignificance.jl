srpide6 = get_partial_information_decomposition(nr_e6, tr_e6, sr_e6)
srpide65 = get_partial_information_decomposition(nr_e65, tr_e65, sr_e65)
srpide7 = get_partial_information_decomposition(nr_e7, tr_e7, sr_e7)
srpide75 = get_partial_information_decomposition(nr_e75, tr_e75, sr_e75)

rpide6 = srpide6["synergy"] + srpide6["redundancy"] + srpide6["unique_1"] + srpide6["unique_2"]
rpide65 = srpide65["synergy"] + srpide65["redundancy"] + srpide65["unique_1"] + srpide65["unique_2"]
rpide7 = srpide7["synergy"] + srpide7["redundancy"] + srpide7["unique_1"] + srpide7["unique_2"]
rpide75 = srpide75["synergy"] + srpide75["redundancy"] + srpide75["unique_1"] + srpide75["unique_2"]

using Random
num_shuffles = 1000

pide6 = zeros(num_shuffles)
pide65 = zeros(num_shuffles)
pide7 = zeros(num_shuffles)
pide75 = zeros(num_shuffles)

synergyS_e6 = zeros(num_shuffles)
redundancyS_e6 = zeros(num_shuffles)
unique_1S_e6 = zeros(num_shuffles)
unique_2S_e6 = zeros(num_shuffles)

synergyS_e65 = zeros(num_shuffles)
redundancyS_e65 = zeros(num_shuffles)
unique_1S_e65 = zeros(num_shuffles)
unique_2S_e65 = zeros(num_shuffles)

synergyS_e7 = zeros(num_shuffles)
redundancyS_e7 = zeros(num_shuffles)
unique_1S_e7 = zeros(num_shuffles)
unique_2S_e7 = zeros(num_shuffles)

synergyS_e75 = zeros(num_shuffles)
redundancyS_e75 = zeros(num_shuffles)
unique_1S_e75 = zeros(num_shuffles)
unique_2S_e75 = zeros(num_shuffles)

s = plot(["E6", "E6.5", "E7", "E7.5" ], [rpide6, rpide65, rpide7, rpide75], color = :red, label = false)

for shuffle_index = 1:num_shuffles
    pid0e6 = get_partial_information_decomposition(shuffle(nr_e6), shuffle(tr_e6), shuffle(sr_e6))
    pide6[shuffle_index] = pid0e6["synergy"] + pid0e6["redundancy"] + pid0e6["unique_1"] + pid0e6["unique_2"]
    synergyS_e6[shuffle_index] = pid0e6["synergy"]
    redundancyS_e6[shuffle_index] = pid0e6["redundancy"]
    unique_1S_e6[shuffle_index] = pid0e6["unique_1"]
    unique_2S_e6[shuffle_index] = pid0e6["unique_2"]

    pid0e65 = get_partial_information_decomposition(shuffle(nr_e65), shuffle(tr_e65), shuffle(sr_e65))
    pide65[shuffle_index] = pid0e65["synergy"] + pid0e65["redundancy"] + pid0e65["unique_1"] + pid0e65["unique_2"]
    synergyS_e65[shuffle_index] = pid0e65["synergy"]
    redundancyS_e65[shuffle_index] = pid0e65["redundancy"]
    unique_1S_e65[shuffle_index] = pid0e65["unique_1"]
    unique_2S_e65[shuffle_index] = pid0e65["unique_2"]

    pid0e7 = get_partial_information_decomposition(shuffle(nr_e7), shuffle(tr_e7), shuffle(sr_e7))
    pide7[shuffle_index] = pid0e7["synergy"] + pid0e7["redundancy"] + pid0e7["unique_1"] + pid0e7["unique_2"]
    synergyS_e7[shuffle_index] = pid0e7["synergy"]
    redundancyS_e7[shuffle_index] = pid0e7["redundancy"]
    unique_1S_e7[shuffle_index] = pid0e7["unique_1"]
    unique_2S_e7[shuffle_index] = pid0e7["unique_2"]

    pid0e75 = get_partial_information_decomposition(shuffle(nr_e75), shuffle(tr_e75), shuffle(sr_e75))
    pide75[shuffle_index] = pid0e75["synergy"] + pid0e75["redundancy"] + pid0e75["unique_1"] + pid0e75["unique_2"]
    synergyS_e75[shuffle_index] = pid0e75["synergy"]
    redundancyS_e75[shuffle_index] = pid0e75["redundancy"]
    unique_1S_e75[shuffle_index] = pid0e75["unique_1"]
    unique_2S_e75[shuffle_index] = pid0e75["unique_2"]

    s = plot!(["E6", "E6.5", "E7", "E7.5" ], [pide6[shuffle_index], pide65[shuffle_index], pide7[shuffle_index], pide75[shuffle_index]], color = :black, label = false)
end

s = plot!(["E6", "E6.5", "E7", "E7.5" ], [rpide6, rpide65, rpide7, rpide75], color = :red, label = false)

display(s)

using StatsPlots
b = boxplot(["E6"], [pide6], xlabel = "Time Point", label = false)
b = boxplot!(["E6.5"], [pide65], label = false)
b = boxplot!(["E7"], [pide7], label = false)
b = boxplot!(["E7.5"], pide75, label = false)
b = scatter!(["E6", "E6.5", "E7", "E7.5"], [rpide6, rpide65, rpide7, rpide75], color = :red, label = false)
display(b)

sb = boxplot(["E6"], [synergyS_e6], xlabel = "Time Point", label = false)
sb = boxplot!(["E6.5"], [synergyS_e65], label = false)
sb = boxplot!(["E7"], [synergyS_e7], label = false)
sb = boxplot!(["E7.5"], [synergyS_e75], label = false)
sb = scatter!(["E6", "E6.5", "E7", "E7.5"], [srpide6["synergy"], srpide65["synergy"], srpide7["synergy"], srpide75["synergy"]], color = :red, label = false)
display(sb)

display(histogram(pide6, title = "PID E6", label = false))
display(histogram(pide65, title = "PID E6.5", label = false))
display(histogram(pide7, title = "PID E7", label = false))
display(histogram(pide75, title = "PID E7.5", label = false))

using Statistics
q95_pide6_NT = quantile(pide6,0.95)
q95_pide65_NT = quantile(pide65,0.95)
q95_pide7_NT = quantile(pide7,0.95)
q95_pide75_NT = quantile(pide75,0.95)

q95_pide6_S = quantile(synergyS_e6,0.95)
q95_pide65_S = quantile(synergyS_e65,0.95)
q95_pide7_S = quantile(synergyS_e7,0.95)
q95_pide75_S = quantile(synergyS_e75,0.95)


println("E6 ", rpide6>q95_pide6_NT)
println("E6.5 ", rpide65>q95_pide65_NT)
println("E7 ", rpide7>q95_pide7_NT)
println("E7 ", rpide75>q95_pide75_NT)