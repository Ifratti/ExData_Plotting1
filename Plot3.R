source('C:/Users/ifrat/Dropbox/R/Coursera/Exploratory data Analysis/ExData_Plotting1/ReadPlotData.R')

png("plot3.png")
household_power_consumption[,plot(DateTime,Sub_metering_1,type ="l"
                                  ,xlab = "",ylab = "Energy sub metering")]
household_power_consumption[,lines(DateTime,Sub_metering_2,type ="l"
                                   ,xlab = "",ylab = "Energy sub metering"
                                   ,col = 'red')]
household_power_consumption[,lines(DateTime,Sub_metering_3,type ="l"
                                   ,xlab = "",ylab = "Energy sub metering"
                                   ,col = 'blue')]
legend("topright"
       ,col = c('black','red','blue')
       ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1
       ,xjust = 1)
dev.off()
