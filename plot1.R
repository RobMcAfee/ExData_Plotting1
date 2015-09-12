# plot1.R
# 
# Rob McAfee
# Sep 2015
# Plot 1 in Project 1 for Exploratory Data Analysis

# set the current working directory to the project directory.  
setwd("~/Rob/Coursera/Exploratory_Data_Analysis/project1")

# read in the data.  
#   This source file contains code to read in the data.
#   The result will be a data frame named power_consumption
#   with data for the dates 2007-02-01 and 2007-02-02
source("./read_electric_power_consumption_data.R")

# open the png destination file
png(filename = "plot1.png", width = 480, height = 480)

# create the histogram
hist(power_consumption$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

# close the png destination file
dev.off()