# The dataset was assigned to the dt variable in setup.R

plot3 <- function() {
  message("Subsetting and reformatting data.")
  dt$Date <- as.Date(as.character(dt$Date), format="%d/%m/%Y")
  
  dt <- subset(dt, dt$Date >= "2007-02-01" & dt$Date < "2007-02-03")
  dt$Global_active_power <- as.numeric(as.character(dt$Global_active_power))
  
  dt$Date_Time <- with(dt, as.POSIXct(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S"))
  message("Success!\n")
  
  message("Generating png/plot3.png.")
  png("png/plot3.png", width=480, height=480)
  plot(dt$Date_Time, dt$Sub_metering_1, type="l", xlab=NA, ylab="Energy sub metering")
  lines(dt$Date_Time, dt$Sub_metering_2, col="red", type="l", xlab=NA, ylab="Energy sub metering")
  lines(dt$Date_Time, dt$Sub_metering_3, col="blue", type="l", xlab=NA, ylab="Energy sub metering")
  
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = c(1,1,1), lwd = c(1,1,1))
  dev.off()
  message("Success!\n")
}

plot3()