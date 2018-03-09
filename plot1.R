data <- "./household_power_consumption.txt"
data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE)
data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
global <- as.numeric(data$Global_active_power)
hist(global, main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency", col="red")
dev.copy(png,file="plot1.png")
dev.off() 