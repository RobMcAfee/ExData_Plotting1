# plot4.R
# 
# Rob McAfee
# Sep 2015
# Plot 4 in Project 1 for Exploratory Data Analysis

# set the current working directory to the project directory.  
setwd("~/Rob/Coursera/Exploratory_Data_Analysis/project1")

# read in the data.  
#   This source file contains code to read in the data.
#   The result will be a data frame named power_consumption
#   with data for the dates 2007-02-01 and 2007-02-02
source("./read_electric_power_consumption_data.R")

# open the png destination file
png(filename = "plot4.png", width = 480, height = 480)

# set the plot to have 2x2 layout
par(mfcol=c(2,2))

# create the Global Active Power plot in position 1,1
plot(power_consumption$Time, power_consumption$Global_active_power, type = "l", 
     ylab = "Global Active Power", xlab = "")

# create the Energy sub metering plot in position 2,1
plot(power_consumption$Time, power_consumption$Sub_metering_1, type = "l", 
     col = "black", ylab = "Energy sub metering", xlab = "")
lines(power_consumption$Time, power_consumption$Sub_metering_2, type = "l", 
      col = "red")
lines(power_consumption$Time, power_consumption$Sub_metering_3, type = "l", 
      col = "blue")

# add the legend to sub metering plot
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, lwd = 2.5, bty = "n")

# create the Voltage plot in position 1,2
plot(power_consumption$Time, power_consumption$Voltage, type = "l", 
     ylab = "Voltage", xlab = "datetime")

# create the Global_reactive_plower plot in position 2,2
plot(power_consumption$Time, power_consumption$Global_reactive_power, type = "l", 
     ylab = "Global_reactive_power", xlab = "datetime")

# close the png destination file
dev.off()