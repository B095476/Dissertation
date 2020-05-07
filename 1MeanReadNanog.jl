# read the data from file
using ExcelReaders
n_e6_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Nanog!B2:B9") #read data from file
n_e65_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Nanog!C2:C15") #read data from file
n_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Nanog!D2:D43") #read data from file
n_e75_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Nanog!E2:E47") #read data from file

# convert to array of Float64
n_e6 = convert.(Float64, n_e6_file) #convert from array of any to array of Float64 and store as new variable  
n_e65 = convert.(Float64, n_e65_file) #convert from array of any to array of Float64 and store as new variable 
n_e7 = convert.(Float64, n_e7_file) #convert from array of any to array of Float64 and store as new variable 
n_e75 = convert.(Float64, n_e75_file) #convert from array of any to array of Float64 and store as new variable 

# calculate entropy
using InformationMeasures
ent_n_e6 = get_entropy(n_e6) #calculate entropy 
ent_n_e65 = get_entropy(n_e65) #calculate entropy 
ent_n_e7 = get_entropy(n_e7) #calculate entropy 
ent_n_e75 = get_entropy(n_e75) #calculate entropy 


# print entropy 
println("entropy nanog e6 is ", ent_n_e6) #print entropy
println("entropy nanog e6.5 is ", ent_n_e65) #print entropy
println("entropy nanog e7 is ", ent_n_e7) #print entropy
println("entropy nanog e7.5 is ", ent_n_e75) #print entropy

# display histogram 
using Plots
display(histogram(n_e6, xlabel="Expression", ylabel="Frequency", title="Nanog E6", color=:purple, legend = false)) #plot hisogram of data
display(histogram(n_e65, xlabel="Expression", ylabel="Frequency", title="Nanog E6.5", color=:purple, legend = false)) #plot hisogram of data 
display(histogram(n_e7, xlabel="Expression", ylabel="Frequency", title="Nanog E7", color=:purple, legend = false)) #plot hisogram of data 
display(histogram(n_e75, xlabel="Expression", ylabel="Frequency", title="Nanog E7.5", color=:purple, legend = false)) #plot hisogram of data 