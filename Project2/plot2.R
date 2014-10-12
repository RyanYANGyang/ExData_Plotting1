plot(ExactTime2,HPC$Global_active_power,type = "l", xaxt='n', xlab = "", ylab = "Global Active Power(kilowatts)")

axis(1,c(min,middle,max),c("Thu","Fri","Sat"))

dev.copy(png,filename = "plot2.png", width = 480, height = 480)
dev.off()