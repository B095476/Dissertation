# using Plots
# gr()

# NanogE7 = Float64[]
# NanogE7 = "C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx"

using ExcelReaders

nanoge7file = readxl("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1!A2:B12" ::Int32)

# function readafile(filename::String)
#     io = open(filename, "r")
#     content = read(io, String)
#     println(content)
# end 
# readafile("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx")


# nanoge7file = XLSX.readdata("C:\\Users\\Carol Clark\\OneDrive\\Dissertation\\Data\\test.xlsx", "Sheet1", "A2:D12")
    
# using Plots
# display(histogram(nanoge7file))



# function two_hists()
#     x0 = randn(500)
#     x1 = x0+1

#     trace1 = histogram(x=x0, opacity=0.75)
#     trace2 = histogram(x=x1, opacity=0.75)
#     data = [trace1, trace2]
#     layout = Layout(barmode="overlay")
#     display(plot(data, layout))
# end
