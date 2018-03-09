data <- "./household_power_consumption.txt"
data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE)
data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
global <- as.numeric(data$Global_active_power)

sub1 <- as.numeric(data$Sub_metering_1)
sub2 <- as.numeric(data$Sub_metering_2)
sub3 <- as.numeric(data$Sub_metering_3)
date <- paste(data$Date, data$Time,sep=" ")
datetime <- strptime(date, "%d/%m/%Y %H:%M:%S")

windows(width=8, height=6.4)
plot(datetime, sub1, type="l", ylab="Energy Submetering")
lines(datetime, sub2, type="l", col="red")
lines(datetime, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),lty=1,lwd=2)

dev.copy(png,file="plot3.png", height=480, width=600)
dev.off() 