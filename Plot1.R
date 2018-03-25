source('ReadPlotData.R')


png("plot1.png")
household_power_consumption[
    ,hist(Global_active_power
          ,col = 'red'
          , main = "Global Active Power"
          ,xlab = "Global Active Power (kilowatts)")]
dev.off()

