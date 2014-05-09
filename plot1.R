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

#Create the histogram and save it as a png file.
png(file = "plot1.png", width = 480, height = 480)

hist(data[,"Global_active_power"], col="red", main = "Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()
