temp<-read.csv("household_power_consumption.txt",header=T, sep=";", stringsAsFactors=F)

data<-temp[temp$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png", width=480,height=480)
hist(as.numeric(data$Global_active_power),col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()