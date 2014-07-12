
temp <- read.table("household_power_consumption.txt", header=T, sep=";")

                
data<-temp[temp$Date %in% c("1/2/2007","2/2/2007"),]  

data$datetime<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")

png("plot2.png", height = 480, width = 480)

plot(data$datetime,data$Global_active_power,xlab ="", ylab = "Global Active Power (kilowatts)", type ="l")


dev.off()
