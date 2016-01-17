source("./dataLoad.R")

png("plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

plot(filteredData$DateTime, filteredData$Global_active_power, 
     xlab = "", ylab = "Global Active Power",
     type="l")

plot(filteredData$DateTime, filteredData$Voltage, 
     xlab = "datetime", ylab = "Voltage",
     type="l")

plot(filteredData$DateTime, filteredData$Sub_metering_1, 
     xlab = "", ylab = "Energy sub metering", type="l")
lines(filteredData$DateTime, filteredData$Sub_metering_2, type="l", col="red")
lines(filteredData$DateTime, filteredData$Sub_metering_3, type="l", col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lwd=2)

plot(filteredData$DateTime, filteredData$Global_reactive_power, 
     xlab = "datetime", ylab = "Global_reactive_power",
     type="l")

dev.off()