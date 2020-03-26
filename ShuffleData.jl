function shuffletest(n, t, s)
 e = length(n)
    for i in 1:e
        sn = shuffle(n)
        st = shuffle(t)
        ss = shuffle(s)
        pid = Dict() 
        pid[i] = get_partial_information_decomposition(sn, st, ss)
        println(pid[i])
    end
end