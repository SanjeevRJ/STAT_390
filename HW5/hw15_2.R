#a
dat1 <- read.table("https://www.stat.washington.edu/marzban/390/spring19/hw_3_dat1.txt", header = T)
y <- dat1$y
x1 <- dat1$x1
x2 <- dat1$x2
plot(x1, y)
plot(x2, y)
plot(x1, x2)
x1x2 <- x1*x2
lm <- lm(y ~ x1 + x2 + x1*x2)

#b
dat2 <- read.table("https://www.stat.washington.edu/marzban/390/spring19/hw_3_dat2.txt", header = T)
y <- dat2$y
x1 <- dat2$x1
x2 <- dat2$x2
x12 <- x1^2
plot(x1, y)
plot(x2, y)
plot(x1, x2)
lm.2 <- lm(y ~ x1 + x12)
summary(lm.2)
