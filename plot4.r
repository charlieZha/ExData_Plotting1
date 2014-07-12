temp<-read.csv("household_power_consumption.txt", sep=";",header=T)

data<-temp[temp$Date %in% c("1/2/2007","2/2/2007"),]

data$datetime<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

png("plot4.png", height=480,width=480)

par(mfrow=c(2,2))

plot(data$datetime,data$Global_active_power, xlab="",ylab="Global Active Power", type="l")

plot(data$datetime,data$Voltage, xlab="datetime",ylab="Voltage", type="l")

cols=c("Sub_metering_1","Sub_metering_2","Submetering_3")
plot(data$datetime,data$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l",col='black')
lines(data$datetime,data$Sub_metering_2,col="red")
lines(data$datetime,data$Sub_metering_3,col="blue")
legend('topright',legend=cols,col=c('black','red','blue'), lty = 1, lwd = 3)

plot(data$datetime,data$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

dev.off()