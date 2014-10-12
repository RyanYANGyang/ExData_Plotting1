with(HPC,{
     plot(ExactTime2,Sub_metering_1,type = "l", xaxt = 'n', xlab = "",ylab="Energy submeeting")
     points(ExactTime2,Sub_metering_2,type = "l", col = "red")
     points(ExactTime2,Sub_metering_3,type = "l", col = "blue")
})

min<- min(ExactTime2); middle <- median(ExactTime2); max <- max(ExactTime2)

axis(1,c(min,middle,max),c("Thu","Fri","Sat"))

legend("topright", lty= 1,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = 0.75, y.intersp = 0.5)

dev.copy(png,filename = "plot3.png", width = 480, height = 480)
dev.off()