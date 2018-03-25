source('ReadPlotData.R')

png("plot2.png")
household_power_consumption[,plot(DateTime,Global_active_power,type ="l"
                                  ,xlab = "",ylab = "Global Active Power (kilowatts)")]
dev.off()

