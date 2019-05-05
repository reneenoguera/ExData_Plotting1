dataFile <- "./exdata_data_household_power_consumption/household_power_consumption.txt"
data <- read.delim(dataFile, header=TRUE, sep=";", na.strings = "?")
data1 <- subset(data, data$Date=="1/2/2007" | data$Date== "2/2/2007")
png("plot1.png", width=480, height=480)
hist(as.numeric(data1$Global_active_power),col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()