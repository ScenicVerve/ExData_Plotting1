#Dataset: Electric power consumption [20Mb]

#Description: Measurements of electric power consumption in one household 
#with a one-minute sampling rate over a period of almost 4 years. 
#Different electrical quantities and some sub-metering values are available.

#The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
#Date: Date in format dd/mm/yyyy
#Time: time in format hh:mm:ss
#Global_active_power: household global minute-averaged active power (in kilowatt)
#Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
#Voltage: minute-averaged voltage (in volt)
#Global_intensity: household global minute-averaged current intensity (in ampere)
#Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
#It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave 
#(hot plates are not electric but gas powered).
#Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). 
#It corresponds to the laundry room, containing a washing-machine, 
#a tumble-drier, a refrigerator and a light.
#Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). 
#It corresponds to an electric water-heater and an air-conditioner.

# 0. Import Data for Analysis.
setwd("/Users/jldeloatch/project1/EDA/ExData_Plotting1/")
household_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", as.is = TRUE, 
                             na.strings = "?", colClasses = c("character", "character", "numeric", 
                                                              "numeric","numeric" ,"numeric", "numeric", "numeric", "numeric"))

household_data_sub <- subset(household_data, Date == "1/2/2007" | Date == "2/2/2007")
attach(household_data_sub)
summary(Global_active_power)

#plot1.png 
hist(Global_active_power, col = "red", breaks = 12,
     main = paste("Global Active Power"),  
     xlab = "Global Active Power (kilowatts)")
