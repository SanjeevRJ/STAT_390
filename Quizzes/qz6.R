#Part 1
#a
N <- 500
n.trial <- 10000
sample.stat <- numeric(n.trial)
for(i in 1:n.trial) {
  samp <- rnorm(N, 2, 3)
  sample.stat[i] <- sd(samp)
}

#b
hist(sample.stat, breaks = 400)
mean(sample.stat)
sd(sample.stat)
#Looking at this histogram confinms that this distribution is normal.
#The mean of this distribution is approximately 3 which is sigma and
#the standard deviation is .095 which is the same as sigma/sqrt(2n).

#c
set.seed(123)
x = rnorm(100, 2, 3)
x.stat = mean(x)
x.err = sd(x) / sqrt(100)
x.stat - abs(qnorm(.15 / 2)) * x.err
x.stat + abs(qnorm(.15 / 2)) * x.err

#d
set.seed(123)
N <- 10000
pop <- rnorm(N, 2, 3)
pop.mean <- mean(pop)
n.trial <- 10000
sample.size <- 100
CI <- matrix(nrow = n.trial, ncol = 2)

for(i in 1:n.trial) {
  sample.trial <- sample(pop, sample.size)
  sd <- sd(sample.trial)
  err <- sd(sample.trial) / sqrt(length(sample.trial))
  CI[i,1] = sd - abs(qnorm(.15 / 2)) * err
  CI[i,2] = sd + abs(qnorm(.15 / 2)) * err
}

count <- 0
for (j in n.trial) {
  if (CI[i,1] <= 3 && CI[i,2] >= 3) {
    count = count + 1
  }
}
count
#The count should be around 8500 but my code was not working
#entirely. Unforunately could not debug.