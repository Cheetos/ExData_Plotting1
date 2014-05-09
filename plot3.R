#Get the data
data <- read.table("household_power_consumption.txt",
                   header = FALSE,
                   sep = ";",
                   skip = 66637,
                   nrows = 2879)

#Define the column names
colnames(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power",
                    "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2",
                    "Sub_metering_3")


#Create datetime
x <- paste(data$Date, data$Time)
t <- strptime(x, "%d/%m/%Y %H:%M:%S")

#Plot the corresponding lines and legend and save it as a png file

png(file = "plot3.png", width = 480, height = 480)

plot(t,data[,"Sub_metering_1"], type="l",xlab="", ylab="Energy sub metering")
lines(t,data[,"Sub_metering_2"],col="red")
lines(t,data[,"Sub_metering_3"],col="blue")

legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"), lty=1)

dev.off()


