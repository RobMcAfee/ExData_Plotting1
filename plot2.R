# plot2.R
# 
# Rob McAfee
# Sep 2015
# Plot 2 in Project 1 for Exploratory Data Analysis

# set the current working directory to the project directory.  
setwd("~/Rob/Coursera/Exploratory_Data_Analysis/project1")

# read in the data.  
#   This source file contains code to read in the data.
#   The result will be a data frame named power_consumption
#   with data for the dates 2007-02-01 and 2007-02-02
source("./read_electric_power_consumption_data.R")

# open the png destination file
png(filename = "plot2.png", width = 480, height = 480)

# create the plot
plot(power_consumption$Time, power_consumption$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")

# close the png destination file
dev.off()