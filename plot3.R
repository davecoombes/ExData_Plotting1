source("./dataLoad.R")

png("plot3.png", width = 480, height = 480)

plot(filteredData$DateTime, filteredData$Sub_metering_1, 
     xlab = "", ylab = "Energy sub metering", type="l")
lines(filteredData$DateTime, filteredData$Sub_metering_2, type="l", col="red")
lines(filteredData$DateTime, filteredData$Sub_metering_3, type="l", col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lwd=2)

dev.off()