##download data

fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl, destfile = "data.zip", method = "curl")
##read all data
data_all <- read.table(unzip("data.zip"), header = TRUE, sep = ";", na.strings = "?")

##subset needed data
flag <- as.character(data_all$Date) == "1/2/2007" | as.character(data_all$Date) == "2/2/2007"
data <- data_all[flag,]

##convert datetime
date_time_tmp <- paste(data$Date, data$Time, sep = " ")
datetime <- strptime(date_time_tmp, format="%d/%m/%Y %H:%M:%S")