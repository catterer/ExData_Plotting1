source('readData.R')

d <- readData('household_power_consumption.txt')

png('plot3.png')

plot_subs(d)

dev.off()