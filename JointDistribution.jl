using Plots

#e6
display(scatter([n_e6, t_e6], color=[:purple :yellow], label=["Nanog" "T"], title="Joint Distribution Nanog and T at E6"))
display(scatter([n_e6, s_e6], color=[:purple :lightblue], label=["Nanog" "Sox2"], title="Joint Distribution Nanog and Sox2 at E6"))
display(scatter([s_e6, t_e6], color=[:lightblue :yellow], label=["Nanog" "T"], title="Joint Distribution Sox2 and T at E6"))

#e65
display(scatter([n_e65, t_e65], color=[:purple :yellow], label=["Nanog" "T"], title="Joint Distribution Nanog and T at E6.5"))
display(scatter([n_e65, s_e65], color=[:purple :lightblue], label=["Nanog" "Sox2"], title="Joint Distribution Nanog and Sox2 at E6.5"))
display(scatter([s_e65, t_e65], color=[:lightblue :yellow], label=["Nanog" "T"], title="Joint Distribution Sox2 and T at E6.5"))

#e7
display(scatter([n_e7, t_e7], color=[:purple :yellow], label=["Nanog" "T"], title="Joint Distribution Nanog and T at E7"))
display(scatter([n_e7, s_e7], color=[:purple :lightblue], label=["Nanog" "Sox2"], title="Joint Distribution Nanog and Sox2 at E7"))
display(scatter([s_e7, t_e7], color=[:lightblue :yellow], label=["Nanog" "T"], title="Joint Distribution Sox2 and T at E7"))