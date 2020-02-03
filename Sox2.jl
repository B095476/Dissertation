# read the data from file
using ExcelReaders
s_e55_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sox2!A2:A5") #read data from file
s_e6_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sox2!B2:B9") #read data from file
s_e65_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sox2!C2:C15") #read data from file
s_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sox2!D2:D43") #read data from file
# t_e75_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sox2!A1:A42") #read data from file

# convert to array of Float64
s_e55 = convert.(Float64, s_e55_file) #convert from array of any to array of Float64 and store as new variable
s_e6 = convert.(Float64, s_e6_file) #convert from array of any to array of Float64 and store as new variable  
s_e65 = convert.(Float64, s_e65_file) #convert from array of any to array of Float64 and store as new variable 
s_e7 = convert.(Float64, s_e7_file) #convert from array of any to array of Float64 and store as new variable 
# s_e75 = convert.(Float64, s_e75_file) #convert from array of any to array of Float64 and store as new variable 

# calculate entropy
using InformationMeasures
ent_s_e55 = get_entropy(s_e55) #calculate entropy 
ent_s_e6 = get_entropy(s_e6) #calculate entropy 
ent_s_e65 = get_entropy(s_e65) #calculate entropy 
ent_s_e7 = get_entropy(s_e7) #calculate entropy 
# ent_s_e75 = get_entropy(s_e75) #calculate entropy 


# print entropy 
println("entropy Sox2 e5.5 is ", ent_s_e55) #print entropy
println("entropy Sox2 e6 is ", ent_s_e6) #print entropy
println("entropy Sox2 e6.5 is ", ent_s_e65) #print entropy
println("entropy Sox2 e7 is ", ent_s_e7) #print entropy
# println("entropy Sox2 e7.5 is ", ent_s_e75) #print entropy

# display histogram 
using Plots
display(histogram(s_e55)) #plot hisogram of data 
display(histogram(s_e6)) #plot hisogram of data 
display(histogram(s_e65)) #plot hisogram of data 
display(histogram(s_e7)) #plot hisogram of data 
# display(histogram(s_e75)) #plot hisogram of data 