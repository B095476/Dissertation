using Plots

#e6
display(marginalhist(n_e6, t_e6, xaxis="Nanog E6", yaxis="T E6"))
display(marginalhist(n_e6, s_e6, xaxis="Nanog E6", yaxis="Sox2 E6"))
display(marginalhist(s_e6, t_e6, xaxis="Sox2 E6", yaxis="T E6"))

#e65
display(marginalhist(n_e65, t_e65, xaxis="Nanog E6.5", yaxis="T E6.5"))
display(marginalhist(n_e65, s_e65, xaxis="Nanog E6.5", yaxis="Sox2 E6.5"))
display(marginalhist(s_e65, t_e65, xaxis="Sox2 E6.5", yaxis="T E6.5"))

#e7
display(marginalhist(n_e7, t_e7, xaxis="Nanog E7", yaxis="T E7"))
display(marginalhist(n_e7, s_e7, xaxis="Nanog E7", yaxis="Sox2 E7"))
display(marginalhist(s_e7, t_e7, xaxis="Sox2 E7", yaxis="T E7"))

#e65
display(marginalhist(n_e75, t_e75, xaxis="Nanog E7.5", yaxis="T E7.5"))
display(marginalhist(n_e75, s_e75, xaxis="Nanog E7.5", yaxis="Sox2 E7.5"))
display(marginalhist(s_e75, t_e75, xaxis="Sox2 E7.5", yaxis="T E7.5"))
