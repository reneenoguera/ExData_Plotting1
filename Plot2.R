dataFile <- "./exdata_data_household_power_consumption/household_power_consumption.txt"
data <- read.delim(dataFile, header=TRUE, sep=";", na.strings = "?")
data1 <- subset(data, data$Date=="1/2/2007" | data$Date== "2/2/2007")
png("plot2.png", width=480, height=480)
data1$Time <- strptime(paste(data1$Date, data1$Time), "%d/%m/%Y %H:%M:%S")
plot(x=data1$Time, y=as.numeric(data1$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()