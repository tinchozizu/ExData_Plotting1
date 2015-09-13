

setwd("C:/Users/samsung/Documents/Data_Science/Material/Explain_data/Assignment1")

PowerConsumption <- read.table("./household_power_consumption.txt",nrow= 300000, header=TRUE, sep=";", na.strings = "?")

dates <- PowerConsumption$Date
time <- PowerConsumption$Time

datetime <- paste(dates, time)

datetime <- strptime(datetime, format="%d/%m/%Y %H:%M:%S")

PowerConsumption <- PowerConsumption[,-1]
PowerConsumption <- PowerConsumption[,-1]

PowerConsumption <- cbind(datetime, PowerConsumption)

my.data.frame <- subset(PowerConsumption, PowerConsumption$datetime > strptime("2007-01-31 24:00:00", format="%Y-%m-%d %H:%M:%S") & PowerConsumption$datetime < strptime("2007-02-03 00:00:00", format="%Y-%m-%d %H:%M:%S"))

png(filename='./plot2.png',width=480,height=480,units='px')
plot(my.data.frame$datetime,my.data.frame$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')
x<-dev.off()


