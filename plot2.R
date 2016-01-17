source("./dataLoad.R")

png("plot2.png", width = 480, height = 480)
plot(filteredData$DateTime, filteredData$Global_active_power, 
     xlab = "", ylab = "Global Active Power (kilowatts)",
     type="l")
dev.off()