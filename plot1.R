source('readData.R')

d <- readData('household_power_consumption.txt')
png('plot1.png')
hist(d$gap, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.off()
