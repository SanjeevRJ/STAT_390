dat = read.table("https://www.stat.uw.edu/marzban/390/spring19/hw_lect3_dat.txt", header=F)
x1 <- dat[,1]
hist(x1)
x2 <- dat[,2]
hist(x2)

H1 = hist(x1)
plot(H1$mids, log(H1$counts))
#Logs on both axes made this plot linear
plot(log(H1$mids), log(H1$counts))
H2 = hist(x2)
#Log on the y axis made this plot linear
plot(H2$mids, log(H2$counts))
plot(log(H2$mids), log(H2$counts))
