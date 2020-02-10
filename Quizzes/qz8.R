#Part 1
dat = read.table("https://www.stat.uw.edu/marzban/390/spring19/qz8_dat.txt", header=T)
x1 = dat[,1]
x2 = dat[,2]
#a
t.test(x1, x2, paired = TRUE, alternative = "two.sided")$p.value
#The p-value is 0.01379

#b
x1_shuff <- sample(x1, 100, rep = F)
t.test(x1_shuff, x2, paired = TRUE, alternative = "two.sided")$p.value
#The p-value is now 0.1088

#c
t.test(x1, x2, paired = TRUE, alternative = "two.sided")
t.test(x1-x2, alternative = "two.sided")
#Both of these t tests yield the same results.

#Part 2
#d
mu.1 <- 1.5
n.trials <- 1000
p <- numeric(n.trials)
for (i in 1:n.trials) {
  x <- rnorm(20, mu.1, 1)
  p[i] <- t.test(x, mu = 1)$p.value
}

#Part 3
library(stats)
size = 100
p2 <- numeric(n.trials)
for (i in 1:n.trials) {
  obscounts = rmultinom(1, size, c(1/3, 1/3, 1/3))
  p2[i] <- chisq.test(obscounts, p = c(1/3, 1/3, 1/3))$p.value
}
  