data <-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE)

data <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")

GAP_kW = as.numeric(data$Global_active_power)
combodate <- with(data, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

png("plot4.PNG", width = 480, height = 480)

par(mfrow=c(2,2))


plot(GAP_kW~combodate,ylab="Global Active Power",xlab="",type="l")

plot(as.numeric(data$Voltage)~combodate,ylab="Voltage",xlab="datetime",type="l")

plot(as.numeric(data$Sub_metering_1)~combodate,ylab="Energy sub metering",xlab="",type="l")
lines(as.numeric(data$Sub_metering_2)~combodate,col="RED")
lines(as.numeric(data$Sub_metering_3)~combodate,col="BLUE")
legend(x="topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"),bty="n")

plot(as.numeric(data$Global_reactive_power)~combodate,ylab="Global_reactive_power",xlab="datetime",type="l")

dev.off()