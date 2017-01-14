source('readData.R')

d <- readData('household_power_consumption.txt')

png('plot4.png')

par(mfrow=c(2,2))

plot_gap(d)
plot(d$time, d$volt, type='l', main='', ylab = 'Voltage', xlab='datetime')
plot_subs(d)
plot(d$time, d$grp, type='l', main='', ylab = 'Global reactive power', xlab='datetime')

dev.off()