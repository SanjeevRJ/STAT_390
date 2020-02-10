#a
n = 10
n.trial = 5000

x = c(1:n)
beta_hat = c(1:n.trial)
SSE = c(1:n.trial)
y_true = 10 + 2*x
sigma_eps = 15

set.seed(123)
for (trial in 1:n.trial) {
  y_obs = y_true + rnorm(n, 0, sigma_eps)
  beta_hat[trial] = (mean(y_obs*x) - mean(x) * mean(y_obs))/(mean(x^2) - mean(x)^2)
  SSE[trial] = sum((y_obs - y_true)^2)
}
hist(beta_hat)

#b
mean(beta_hat)

#c 
sd(beta_hat)
SSE = mean(SSE)
Sxx = sum((x - mean(x))^2)
sigma_eps/sqrt(Sxx)

#d
qqnorm(beta_hat)
abline(2, 1.64, col = 2)