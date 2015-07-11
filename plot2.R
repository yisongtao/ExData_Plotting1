##generate plot2 as png file
png(file="plot2.png")
plot(datetime,data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type = "n")
lines(datetime, data$Global_active_power, lwd=1)
dev.off()