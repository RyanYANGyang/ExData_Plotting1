## Read the table and get the classes of the columns
temp<-read.table("household_power_consumption.txt", sep = ";",nrow = 10, header = TRUE, na.strings = "?", stringsAsFactors = FALSE)        
classes<- sapply(temp, class)

## read the entire table
HouPowCon <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", colClasses = classes, stringsAsFactors = FALSE)

## set the time that we need
a <- "1/2/2007" ; b<- "2/2/2007"

## suvbset the data
subsetCondition <- HouPowCon$Date == a |HouPowCon$Date == b
HPC <- HouPowCon[subsetCondition,]

## extract the time
ExactTime <- paste(HPC$Date, HPC$Time, sep = " ")
ExactTime <- strptime(ExactTime, "%d/%m/%Y %H:%M:%S")
ExactTime2 <- unclass(as.POSIXct(ExactTime))

## retrieve the min, median and the max of the time
min<- min(ExactTime2); middle <- median(ExactTime2); max <- max(ExactTime2)
