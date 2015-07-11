##generate plot3 as png file
png(file="plot3.png")
plot (datetime, data$Sub_metering_1, col="black", xlab="", ylab = "Energy sub metering", type ="n")
lines(datetime, data$Sub_metering_1, lwd=1, col="black")
lines(datetime, data$Sub_metering_2, lwd=1, col="red")
lines(datetime, data$Sub_metering_3, lwd=1, col="blue")
legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
