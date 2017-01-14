readData <- function(path) {
  d <- read.csv(path,
                sep=';',
                col.names=c('date', 'time', 'gap', 'grp', 'volt', 'intens', 'sub1', 'sub2', 'sub3'),
                na.strings='?')
  
  d <- d[d$date == '1/2/2007' | d$date == '2/2/2007',]
  d$time <- strptime(paste(d$date, d$time, sep=' '), "%d/%m/%Y %H:%M:%S")
  d[, !(names(d) %in% c('date'))]
}

plot_subs <- function(d) {
  plot(d$time, d$sub1, type='l', col='black', main='', ylab = 'Energy sub metering', xlab='')
  points(d$time, d$sub2, type='l', col='red')
  points(d$time, d$sub3, type='l', col='blue')
  legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty=c(1,1,1))
}

plot_gap <- function(d) {
  plot(d$time, d$gap, type='l', main='', ylab = 'Global Active Power (kilowatts)', xlab='')
}
