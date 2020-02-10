attend =
  c(20.0,8.0,12.0,15.5,12.5,8.5,9.5,16.0,8.5,15.0,15.0,10.0,17.0,15.5,16.5,
    15.0,10.5,19.0,16.0,11.0,8.0,16.5,18.0,15.5,11.5,14.5,16.0,15.0,10.0,7.5,
    13.0,9.5,9.0,13.0,13.5,13.5,14.5,4.5,15.0,8.5,11.0,10.5,13.0,7.5,13.0,
    15.0,11.5,11.0,15.5,12.5,14.5,12.5,11.5,18.0,15.5,13.0,18.5,13.0,16.0,13.0,
    19.0,17.0,18.0,9.5,12.5,20.0,10.5,13.0,10.0,7.5,13.5,11.5,10.5,12.0,13.5,
    16.5,14.5,15.5,16.0,10.5,18.0,14.0)

non.attend =
  c(9.0,15.0,6.0,10.5,13.0,9.0,12.0,15.5,10.0,12.0,15.0,17.5,14.5,7.5,13.0,
    13.5,11.5,9.0,8.5,6.0,8.0,15.0,13.0,11.0,13.0,14.5,13.5,10.0,16.5,11.5)

#a
t.test(attend, non.attend, alternative = "greater", conf.level = 0.95)

#b
#The lower confidence bound is 0.33677. As such, we are 95 %
#confident tha the difference between the mean of attending and
#non-attending students is larger than 0.33677. Since 0 is not included
#in this CI, the corollary conclusion is that mean of attending students is
#higher.

#c
#The p-value is 0.0168. Since the p-value is smaller than alpha, we can reject
#the null hypothesis that the mean of non-attending students is higher than that
#of attending students.

#d
CI.lower <- mean(attend) - mean(non.attend) - 2.1786*sqrt((sd(attend)^2  / length(attend)) + (sd(non.attend)^2  / length(non.attend)))
#The lower bound is 0.33677

#e
set.seed(123)

n.trial <- 100000
sample.size <- 30
CI <- matrix(0, n.trial, 2)
for (i in 1:n.trial) {
  sample1.trial <- sample(attend, sample.size, replace = F)
  sample2.trial <- sample(non.attend, sample.size, replace = F)
  n.boot <- 100
  boot.stat <- numeric(n.boot)
  for (j in 1:n.boot) {
    boot1.sample <- sample(sample1.trial, sample.size, replace = T)
    boot2.sample <- sample(sample2.trial, sample.size, replace = T)
    boot.stat[j] <- mean(boot1.sample) - mean(boot2.sample)
  }
  CI[i,] <- quantile(boot.stat, c(0.05 / 2, (1- 0.05 /2)))
}
mean(CI[,1])
mean(CI[,2])