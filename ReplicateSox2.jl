# read the data from file
using ExcelReaders
sr_e6_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Sox2!A2:A25") #read data from file
sr_e65_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Sox2!B2:B29") #read data from file
sr_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Sox2!C2:C40") #read data from file
sr_e75_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "Sox2!D2:D97") #read data from file

# convert to array of Float64
sr_e6 = convert.(Float64, sr_e6_file) #convert from array of any to array of Float64 and store as new variable  
sr_e65 = convert.(Float64, sr_e65_file) #convert from array of any to array of Float64 and store as new variable 
sr_e7 = convert.(Float64, sr_e7_file) #convert from array of any to array of Float64 and store as new variable 
sr_e75 = convert.(Float64, sr_e75_file) #convert from array of any to array of Float64 and store as new variable 

# calculate entropy
using InformationMeasures
ent_sr_e6 = get_entropy(sr_e6) #calculate entropy 
ent_sr_e65 = get_entropy(sr_e65) #calculate entropy 
ent_sr_e7 = get_entropy(sr_e7) #calculate entropy 
ent_sr_e75 = get_entropy(sr_e75) #calculate entropy 


# print entropy 
println("entropy Sox2 e6 is ", ent_sr_e6) #print entropy
println("entropy Sox2 e6.5 is ", ent_sr_e65) #print entropy
println("entropy Sox2 e7 is ", ent_sr_e7) #print entropy
println("entropy Sox2 e7.5 is ", ent_sr_e75) #print entropy

# display histogram 
using Plots
display(histogram(sr_e6, xlabel="Expression", ylabel="Frequency", title="Sox2 E6", color=:lightblue, legend = false)) #plot hisogram of data 
display(histogram(sr_e65, xlabel="Expression", ylabel="Frequency", title="Sox2 E6.5", color=:lightblue, legend = false)) #plot hisogram of data 
display(histogram(sr_e7, xlabel="Expression", ylabel="Frequency", title="Sox2 E7", color=:lightblue, legend = false)) #plot hisogram of data 
display(histogram(sr_e75, xlabel="Expression", ylabel="Frequency", title="Sox2 E7.5", color=:lightblue, legend = false)) #plot hisogram of data 