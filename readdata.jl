using ExcelReaders
nanog_e7_file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1!A1:A42") #read data from file
using InformationMeasures
nanog_e7 = convert.(Float64, nanog_e7_file) #convert from array of any to array of Float64 and store as new variable 
ent_nanog_e7 = get_entropy(nanog_e7) #calculate entropy 
println(ent_nanog_e7) #print entropy
using Plots
display(histogram(nanog_e7)) #plot hisogram of data 