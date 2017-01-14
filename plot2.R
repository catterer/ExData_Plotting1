source('readData.R')

d <- readData('household_power_consumption.txt')

png('plot2.png')

plot_gap(d)

dev.off()