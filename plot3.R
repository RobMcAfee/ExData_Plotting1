# plot3.R
# 
# Rob McAfee
# Sep 2015
# Plot 3 in Project 1 for Exploratory Data Analysis

# set the current working directory to the project directory.  
setwd("~/Rob/Coursera/Exploratory_Data_Analysis/project1")

# read in the data.  
#   This source file contains code to read in the data.
#   The result will be a data frame named power_consumption
#   with data for the dates 2007-02-01 and 2007-02-02
source("./read_electric_power_consumption_data.R")

# open the png destination file
png(filename = "plot3.png", width = 480, height = 480)

# create the plot 
plot(power_consumption$Time, power_consumption$Sub_metering_1, type = "l", 
     col = "black", ylab = "Energy sub metering", xlab = "")
lines(power_consumption$Time, power_consumption$Sub_metering_2, type = "l", 
      col = "red")
lines(power_consumption$Time, power_consumption$Sub_metering_3, type = "l", 
      col = "blue")

# add the legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, lwd = 2.5)


# close the png destination file
dev.off()