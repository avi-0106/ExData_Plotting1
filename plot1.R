#PLOT-1

data_path <- "data/exdata_data_household_power_consumption/household_power_consumption.txt"
data <- read.table(data_path, header = TRUE, sep = ";")

februaryData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(februaryData$Global_active_power)
#windows()
png("plot1.png", width = 480, height = 480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()