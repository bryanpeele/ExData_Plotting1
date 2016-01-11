data <-read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE)

data <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")

GAP_kW = as.numeric(data$Global_active_power)
combodate <- with(data, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

png("plot2.PNG")

plot(GAP_kW~combodate,ylab="Global Active Power (kilowatts)",xlab="",type="l")

dev.off()