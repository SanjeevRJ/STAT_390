#Part a
counts <- c(round(51*.41), round(51*.27), round(51*.22), round(51*.02), round(51*.06), round(51*.02))
#Part b
dat <- rep(seq(from = 5, to = 0, by = -1), counts)
#Part c
hist(dat, breaks = 5)