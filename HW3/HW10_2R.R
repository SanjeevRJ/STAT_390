dat <- read.csv('C:/Users/sanje/OneDrive/STAT_390/data.csv', header = T)
par(mfrow = c(1,1))
Overall = dat[,8]
Potential = dat[,9]
Weak_Foot = dat[,17]
Skill_Moves = dat[,18]

hist(Overall, breaks = 20)
hist(Potential, breaks = 20)
hist(Weak_Foot, breaks = 5)
hist(Skill_Moves, breaks = 5)

boxplot(Overall[Weak_Foot == 1], Overall[Weak_Foot == 2], Overall[Weak_Foot == 3], Overall[Weak_Foot == 4], 
        Overall[Weak_Foot == 5], names = c("1 Star", "2 Star", "3 Star", "4 Star", "5 Star"), xlab = "Weak Foot Rating", 
        ylab = "Overall Rating", range = 0)

qqnorm(Overall, cex = 0.5)