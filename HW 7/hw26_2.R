#a
set.seed(123)
n = 20
y = 1 + rnorm(n, 0, 1)
x1 <- runif(n, -1, 1)
x2 <- runif(n, -1, 1)
x3 <- runif(n, -1, 1)
x4 <- runif(n, -1, 1)
x5 <- runif(n, -1, 1)
x6 <- runif(n, -1, 1)
x7 <- runif(n, -1, 1)
x8 <- runif(n, -1, 1)
x9 <- runif(n, -1, 1)
x10 <- runif(n, -1, 1)

#b
lm <- lm(y ~ x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10)
summary(lm)

#c
t.test(x1)
t.test(x2)
t.test(x3)
t.test(x4)
t.test(x5)
t.test(x6)
t.test(x7)
t.test(x8)
t.test(x9)
t.test(x10)

