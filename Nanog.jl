# read the data from file
using ExcelReaders
n_e5.5_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1!A2:A5") #read data from file
n_e6_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1!B2:B9") #read data from file
n_e6.5_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1!C2:C15") #read data from file
n_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1!D2:A43") #read data from file
# n_e7.5_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1!A1:A42") #read data from file

# convert to array of Float64
n_e5 = convert.(Float64, n_5_file) #convert from array of any to array of Float64 and store as new variable
n_e6 = convert.(Float64, n_e6_file) #convert from array of any to array of Float64 and store as new variable  
n_e6.5 = convert.(Float64, n_e6.5_file) #convert from array of any to array of Float64 and store as new variable 
n_e7 = convert.(Float64, n_e7_file) #convert from array of any to array of Float64 and store as new variable 
# n_e7.5 = convert.(Float64, n_e7.5_file) #convert from array of any to array of Float64 and store as new variable 

# calculate entropy
using InformationMeasures
ent_n_e5.5 = get_entropy(n_e5.5) #calculate entropy 
ent_n_e6 = get_entropy(n_e6) #calculate entropy 
ent_n_e6.5 = get_entropy(n_e6.5) #calculate entropy 
ent_n_e7 = get_entropy(n_e7) #calculate entropy 
# ent_n_e7.5 = get_entropy(n_e7.5) #calculate entropy 


# print entropy 
println(ent_n_e5.5) #print entropy
println(ent_n_e6) #print entropy
println(ent_n_e6.5) #print entropy
println(ent_n_e7) #print entropy
# println(ent_n_e7.5) #print entropy

# display histogram 
using Plots
display(histogram(n_e5.5)) #plot hisogram of data 
display(histogram(n_e6)) #plot hisogram of data 
display(histogram(n_e6.5) #plot hisogram of data 
display(histogram(n_e7)) #plot hisogram of data 
# display(histogram(n_e7.5)) #plot hisogram of data 