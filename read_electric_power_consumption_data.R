# read_electric_power_consumption_data.R
# 
# Rob McAfee
# Sep 2015
# Project 1 for Exploratory Data Analysis

##############################################################################################
##  Data Setup: Download data files if necessary.            
##############################################################################################

# set the data subdirectory path
dataPath <- file.path("./data")

# create the data subdirectory if it doesn't exist.
if(!file.exists(dataPath)){dir.create(dataPath)}

# if the zip archive with the data files doesn't exist already, download it 
zipfileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipfileDownload <- file.path(dataPath, "electric_power_consumption.zip")
if(!file.exists(zipfileDownload)) {download.file(zipfileURL,destfile=zipfileDownload)}

# Unzip  the file.  The unzipped file is named "household_power_consumption.txt"
unzip(zipfile=zipfileDownload,exdir=dataPath)

##############################################################################################
##  Data Setup: Read downloaded data and convert date and time values            
##############################################################################################

# read text file into a data frame.
# the data file is separated by ";" and has column headers
# "?" are to be treated as NA value and factors should not be created for character strings 
power_consumption <- read.table(file.path(dataPath,"household_power_consumption.txt"), 
                                   header = TRUE, sep=";", na.strings = c("?"),
                                   stringsAsFactors = FALSE)

# only keep the rows for the dates of "1/2/2007" and "2/2/2007"
power_consumption <- 
  power_consumption[power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

# convert date and time values
power_consumption$Time <- strptime(paste(power_consumption$Date, power_consumption$Time, sep = " "),
                                    "%d/%m/%Y %H:%M:%S")
power_consumption$Date <- as.Date(power_consumption$Date, "%d/%m/%y")


#data is already sorted by date and time values, so no need to sort.

##############################################################################################
##  Data Cleanup: Remove any values used for downloading             
##############################################################################################
rm(dataPath)
rm(zipfileDownload)
rm(zipfileURL)