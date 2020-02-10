#a
dat = read.table("https://www.stat.uw.edu/marzban/390/spring19/transform_dat.txt", header=T)
x <- dat[,1]
y <- dat[,2]
par(mfrow=c(1,2))
plot(x,y)
plot(sqrt(x), sqrt(y))

#b
lm.1 = lm(sqrt(y) ~ sqrt(x))
abline(lm.1, col=2)

#c
summary(lm.1)

#e
lm.2 = lm(y~x + I(x^2))

#f
y1pred <- predict(lm.1)
y2pred <- predict(lm.2)
plot(y1pred, y2pred)

#3.33
thick <- c(220, 220, 220, 220, 370, 370, 370, 370, 440, 440, 440, 440,
           680, 680, 680, 680, 860, 860, 860, 860)
strength <- c(24, 22, 19.1, 15.5, 26.3, 24.6, 23.1, 21.1, 25.2, 24,
              21.7, 19.2, 17.0, 14.9, 13.0, 11.8, 12.2, 11.2, 6.6, 2.8)
plot(thick, strength)
lm.33 = lm(strength ~ thick + I(thick^2))
pred <- lm.33$coefficients[1] + lm.33$coefficients[2]*500 + lm.33$coefficients[3]*500^2