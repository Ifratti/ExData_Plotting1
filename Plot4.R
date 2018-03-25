source('ReadPlotData.R')


png("plot4.png")

par(mfcol = c(2,2))
household_power_consumption[,plot(DateTime,Global_active_power,type ="l"
                                  ,xlab = "",ylab = "Global Active Power (kilowatts)")]

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
       ,bty = 'n')

household_power_consumption[,plot(DateTime,Voltage, type = 'l')]
household_power_consumption[,plot(DateTime,Global_reactive_power, type = 'l')]
dev.off()
