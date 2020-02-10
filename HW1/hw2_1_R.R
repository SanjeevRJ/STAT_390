dat <- read.csv('C:/Users/sanje/OneDrive/STAT_390/data.csv', header = T)
par(mfrow = c(2,2))
Overall = dat[,8]
Potential = dat[,9]
Weak_Foot = dat[,17]
Skill_Moves = dat[,18]

hist(Overall, breaks = 20)
hist(Potential, breaks = 20)
hist(Weak_Foot, breaks = 5)
hist(Skill_Moves, breaks = 5)