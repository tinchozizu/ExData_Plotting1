
setwd("C:/Users/samsung/Documents/Data_Science/Material/Explain_data/Assignment1")

PowerConsumption <- read.table("./household_power_consumption.txt",nrow= 300000, header=TRUE, sep=";", na.strings = "?")

dates <- PowerConsumption$Date
time <- PowerConsumption$Time

datetime <- paste(dates, time)

datetime <- as.Date(datetime, format="%d/%m/%Y %H:%M:%S")

PowerConsumption <- PowerConsumption[,-1]
PowerConsumption <- PowerConsumption[,-1]

PowerConsumption <- cbind(datetime, PowerConsumption)


my.data.frame <- subset(PowerConsumption, PowerConsumption$datetime > as.Date("2007-01-31") & PowerConsumption$datetime < as.Date("2007-02-03"))

#Plot1

mydata <- my.data.frame$Global_active_power

png(filename='./plot1.png',width=480,height=480,units='px')
hist(my.data.frame$Global_active_power, col= "red", breaks=14 ,xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", mar= c(3,2,2,1))
x<-dev.off()

