#PLOT-3

data_path <- "data/exdata_data_household_power_consumption/household_power_consumption.txt"
data <- read.table(data_path, header = TRUE, sep = ";")

februaryData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

dateTime <- strptime(paste(februaryData$Date, februaryData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

subMetering1 <- as.numeric(februaryData$Sub_metering_1)
subMetering2 <- as.numeric(februaryData$Sub_metering_2)
subMetering3 <- as.numeric(februaryData$Sub_metering_3)

#windows()
png("plot3.png", width=480, height=480)
plot(dateTime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(dateTime, subMetering2, type="l", col="red")
lines(dateTime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()