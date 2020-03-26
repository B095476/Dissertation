# read the data from file
using ExcelReaders
nr_e6_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Nanog!A2:A25") #read data from file
nr_e65_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Nanog!B2:B29") #read data from file
nr_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Nanog!C2:C40") #read data from file
nr_e75_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Nanog!D2:D97") #read data from file

# convert to array of Float64
nr_e6 = convert.(Float64, nr_e6_file) #convert from array of any to array of Float64 and store as new variable  
nr_e65 = convert.(Float64, nr_e65_file) #convert from array of any to array of Float64 and store as new variable 
nr_e7 = convert.(Float64, nr_e7_file) #convert from array of any to array of Float64 and store as new variable 
nr_e75 = convert.(Float64, nr_e75_file) #convert from array of any to array of Float64 and store as new variable 

# calculate entropy
using InformationMeasures
ent_nr_e6 = get_entropy(nr_e6) #calculate entropy 
ent_nr_e65 = get_entropy(nr_e65) #calculate entropy 
ent_nr_e7 = get_entropy(nr_e7) #calculate entropy 
ent_nr_e75 = get_entropy(nr_e75) #calculate entropy 


# print entropy 
println("entropy nanog e6 is ", ent_nr_e6) #print entropy
println("entropy nanog e6.5 is ", ent_nr_e65) #print entropy
println("entropy nanog e7 is ", ent_nr_e7) #print entropy
println("entropy nanog e7.5 is ", ent_nr_e75) #print entropy

# display histogram 
using Plots
display(histogram(nr_e6, xlabel="Expression", ylabel="Frequency", title="Nanog E6", color=:purple, legend = false)) #plot hisogram of data
# savefig("Nanog E6.png") 
display(histogram(nr_e65, xlabel="Expression", ylabel="Frequency", title="Nanog E6.5", color=:purple, legend = false)) #plot hisogram of data 
# savefig("Nanog E6.5.png") 
display(histogram(nr_e7, xlabel="Expression", ylabel="Frequency", title="Nanog E7", color=:purple, legend = false)) #plot hisogram of data 
# savefig("Nanog E7.png") 
display(histogram(nr_e75, xlabel="Expression", ylabel="Frequency", title="Nanog E7.5", color=:purple, legend = false)) #plot hisogram of data 
# savefig("Nanog E7.5.png") 
