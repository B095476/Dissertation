# read the data from file
using ExcelReaders
tr_e6_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "T!A2:A25") #read data from file
tr_e65_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "T!B2:B29") #read data from file
tr_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "T!C2:C40") #read data from file
tr_e75_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\replicate.xlsx", "T!D2:D97") #read data from file

# convert to array of Float64
tr_e6 = convert.(Float64, tr_e6_file) #convert from array of any to array of Float64 and store as new variable  
tr_e65 = convert.(Float64, tr_e65_file) #convert from array of any to array of Float64 and store as new variable 
tr_e7 = convert.(Float64, tr_e7_file) #convert from array of any to array of Float64 and store as new variable 
tr_e75 = convert.(Float64, tr_e75_file) #convert from array of any to array of Float64 and store as new variable 

# calculate entropy
using InformationMeasures
ent_tr_e6 = get_entropy(tr_e6) #calculate entropy 
ent_tr_e65 = get_entropy(tr_e65) #calculate entropy 
ent_tr_e7 = get_entropy(tr_e7) #calculate entropy 
ent_tr_e75 = get_entropy(tr_e75) #calculate entropy 


# print entropy 
println("entropy T e6 is ", ent_tr_e6) #print entropy
println("entropy T e6.5 is ", ent_tr_e65) #print entropy
println("entropy T e7 is ", ent_tr_e7) #print entropy
println("entropy T e7.5 is ", ent_tr_e75) #print entropy

# display histogram 
using Plots
display(histogram(tr_e6, xlabel="Expression", ylabel="Frequency", title="T E6", color=:yellow, legend = false)) #plot hisogram of data 
display(histogram(tr_e65, xlabel="Expression", ylabel="Frequency", title="T E6.5", color=:yellow, legend = false)) #plot hisogram of data 
display(histogram(tr_e7, xlabel="Expression", ylabel="Frequency", title="T E7", color=:yellow, legend = false)) #plot hisogram of data 
display(histogram(tr_e75, xlabel="Expression", ylabel="Frequency", title="T E7.5", color=:yellow, legend = false)) #plot hisogram of data 