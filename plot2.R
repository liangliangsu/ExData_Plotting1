data <- "./household_power_consumption.txt"
data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE)
data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
global <- as.numeric(data$Global_active_power)
date <- paste(data$Date, data$Time,sep=" ")
datetime <- strptime(date, "%d/%m/%Y %H:%M:%S")

plot(datetime, global, type="l", ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png")
dev.off() 