#PLOT-2

data_path <- "data/exdata_data_household_power_consumption/household_power_consumption.txt"
data <- read.table(data_path, header = TRUE, sep = ";")

februaryData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

dateTime <- strptime(paste(februaryData$Date, februaryData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(februaryData$Global_active_power)

#windows()
png("plot2.png", width=480, height=480)
plot(dateTime,globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

