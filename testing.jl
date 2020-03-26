using InformationMeasures
test_nanog_e7 = [22.18, 12.92, 2.51, 1.48, 2.35, 2.55, 1.28, 1.68, 1.14, 0.61, 6.8, 15.35, 2.95, 5.85, 11.51, 11.95, 12.64, 5.51, 2.5, 5.29, 5.16, 16.28, 9.62, 6.05, 6.54, 8.35, 6.21, 8.35, 2.29, 6.53, 4.38, 7.1, 20.89, 15.79, 24.78, 30.33, 29.31, 28.9, 19.45, 24.4, 16.64, 13.29]
test_ent_nanog_e7 = get_entropy(test_nanog_e7)
println(test_ent_nanog_e7)
using Plots
display(histogram(test_nanog_e7))

# code to prove data is read in correctly by manually inputting it