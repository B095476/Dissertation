# read the data from file
using ExcelReaders
t_e6_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "T!B2:B9") #read data from file
t_e65_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "T!C2:C15") #read data from file
t_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "T!D2:D43") #read data from file
t_e75_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "T!E2:E47") #read data from file

# convert to array of Float64
t_e6 = convert.(Float64, t_e6_file) #convert from array of any to array of Float64 and store as new variable  
t_e65 = convert.(Float64, t_e65_file) #convert from array of any to array of Float64 and store as new variable 
t_e7 = convert.(Float64, t_e7_file) #convert from array of any to array of Float64 and store as new variable 
t_e75 = convert.(Float64, t_e75_file) #convert from array of any to array of Float64 and store as new variable 

# calculate entropy
using InformationMeasures
ent_t_e6 = get_entropy(t_e6) #calculate entropy 
ent_t_e65 = get_entropy(t_e65) #calculate entropy 
ent_t_e7 = get_entropy(t_e7) #calculate entropy 
ent_t_e75 = get_entropy(t_e75) #calculate entropy 


# print entropy 
println("entropy T e6 is ", ent_t_e6) #print entropy
println("entropy T e6.5 is ", ent_t_e65) #print entropy
println("entropy T e7 is ", ent_t_e7) #print entropy
println("entropy T e7.5 is ", ent_t_e75) #print entropy

# display histogram 
using Plots
display(histogram(t_e6, xlabel="Expression", ylabel="Frequency", title="T E6", color=:yellow)) #plot hisogram of data 
display(histogram(t_e65, xlabel="Expression", ylabel="Frequency", title="T E6.5", color=:yellow)) #plot hisogram of data 
display(histogram(t_e7, xlabel="Expression", ylabel="Frequency", title="T E7", color=:yellow)) #plot hisogram of data 
display(histogram(t_e75, xlabel="Expression", ylabel="Frequency", title="T E7.5", color=:yellow)) #plot hisogram of data 