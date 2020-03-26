using Plots
using StatsPlots
#e6
display(marginalhist(nr_e6, tr_e6, xaxis="Nanog E6", yaxis="T E6"))
display(marginalhist(nr_e6, sr_e6, xaxis="Nanog E6", yaxis="Sox2 E6"))
display(marginalhist(sr_e6, tr_e6, xaxis="Sox2 E6", yaxis="T E6"))

#e65
display(marginalhist(nr_e65, tr_e65, xaxis="Nanog E6.5", yaxis="T E6.5"))
display(marginalhist(nr_e65, sr_e65, xaxis="Nanog E6.5", yaxis="Sox2 E6.5"))
display(marginalhist(sr_e65, tr_e65, xaxis="Sox2 E6.5", yaxis="T E6.5"))

#e7
display(marginalhist(nr_e7, tr_e7, xaxis="Nanog E7", yaxis="T E7"))
display(marginalhist(nr_e7, sr_e7, xaxis="Nanog E7", yaxis="Sox2 E7"))
display(marginalhist(sr_e7, tr_e7, xaxis="Sox2 E7", yaxis="T E7"))

#e65
display(marginalhist(nr_e75, tr_e75, xaxis="Nanog E7.5", yaxis="T E7.5"))
display(marginalhist(nr_e75, sr_e75, xaxis="Nanog E7.5", yaxis="Sox2 E7.5"))
display(marginalhist(sr_e75, tr_e75, xaxis="Sox2 E7.5", yaxis="T E7.5"))

