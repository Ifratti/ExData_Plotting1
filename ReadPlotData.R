
require(data.table)
#read data into R faster using fread
if(exists("household_power_consumption")){print("Data already in R")}else{
household_power_consumption<- fread("household_power_consumption.txt"
                                    ,sep = ";",header =T, na.strings = "?", key = "Date")
household_power_consumption<-
    household_power_consumption[Date %in% c("1/2/2007","2/2/2007")]
#transform Data variable into date data type
household_power_consumption[,DateTime :=as.POSIXct(paste(Date,Time)
                                                   ,format = "%e/%m/%Y %H:%M:%S")]


setkey(household_power_consumption,DateTime)
}
