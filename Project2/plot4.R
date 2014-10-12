par(mfrow = c(2,2), mar = c(5,4,4,2))
min<- min(ExactTime2); middle <- median(ExactTime2); max <- max(ExactTime2)

with(HPC,{
        plot(ExactTime2,HPC$Global_active_power,type = "l", xaxt='n', xlab = "", ylab = "Global Active Power(kilowatts)")
axis(1,c(min,middle,max),c("Thu","Fri","Sat"))

    	plot(ExactTime2,Voltage, type = "l", xaxt = 'n', xlab = "datetime", ylab = "Voltage")
     axis(1,c(min,middle,max),c("Thu","Fri","Sat"))

with(HPC,{
     plot(ExactTime2,Sub_metering_1,type = "l", xaxt = 'n', xlab = "",ylab="Energy submeeting")
     points(ExactTime2,Sub_metering_2,type = "l", col = "red")
     points(ExactTime2,Sub_metering_3,type = "l", col = "blue")
})
axis(1,c(min,middle,max),c("Thu","Fri","Sat"))

legend("topright", lty= 1,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = 0.6, y.intersp = 0.3)

     plot(ExactTime2, Global_reactive_power, type = "l", xaxt = 'n', xlab = "")
     axis(1,c(min,middle,max),c("Thu","Fri","Sat"))
})


dev.copy(png,filename = "plot4.png", width = 480, height = 480)
dev.off()