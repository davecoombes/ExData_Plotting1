if(!file.exists("exdata data household_power_consumption.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                  method="curl", destfile="exdata data household_power_consumption.zip")
}

if(!file.exists("household_power_consumption.txt")) {
    unzip("exdata data household_power_consumption.zip")
}

data <- read.table("./household_power_consumption.txt", 
                   header=TRUE, sep=";", 
                   colClasses=c("character", "character", rep("numeric",7)), na="?")

data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
dateFilter <- as.Date(c("2007-02-01", "2007-02-02"))
filteredData <- subset(data, Date %in% dateFilter)
