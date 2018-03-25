source('C:/Users/ifrat/Dropbox/R/Coursera/Exploratory data Analysis/ExData_Plotting1/ReadPlotData.R')

png("plot2.png")
household_power_consumption[,plot(DateTime,Global_active_power,type ="l"
                                  ,xlab = "",ylab = "Global Active Power (kilowatts)")]
dev.off()

