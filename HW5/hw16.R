#16_1
#a
max <- numeric(5000)
for (i in 1:5000) {
  sample <- rnorm(50, mean = 0, sd = 1)
  max[i] <- max(sample)
}
min <- numeric(5000)
for (i in 1:5000) {
  sample <- rnorm(50, mean = 0, sd = 1)
  min[i] <- min(sample)
}
hist(max)
hist(min)

#16_2
#a
means <- numeric(5000)
for (i in 1:5000) {
  sample <- rexp(100,2)
  means[i] <- mean(sample)
}
qqnorm(means)

