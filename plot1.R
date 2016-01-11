data <-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE)

data <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")

GAP_kW = as.numeric(data$Global_active_power)

png("plot1.PNG", width = 480, height = 480)

hist(GAP_kW,col="RED",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()