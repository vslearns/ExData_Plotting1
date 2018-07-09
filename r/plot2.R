plot2 <- function() {
  message("Subsetting and reformatting data.")
  dt$Date <- as.Date(as.character(dt$Date), format="%d/%m/%Y")
  
  dt <- subset(dt, dt$Date >= "2007-02-01" & dt$Date < "2007-02-03")
  dt$Global_active_power <- as.numeric(as.character(dt$Global_active_power))
  
  dt$Date_Time <- with(dt, as.POSIXct(paste(Date, Time), format = "%Y-%m-%d %H:%M:%S"))
  message("Success!\n")
  
  message("Generating png/plot2.png.")
  png("png/plot2.png", width=480, height=480)
  plot(dt$Date_Time, dt$Global_active_power, type="l", xlab=NA, ylab="Global Active Power (kilowatts)")
  dev.off()
  message("Success!\n")
}

plot2()