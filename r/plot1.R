# The dataset was assigned to the dt variable in setup.R

plot1 <- function() {
  message("Subsetting and reformatting data.")
  dt$Date <- as.Date(as.character(dt$Date), format="%d/%m/%Y")
  
  dt <- subset(dt, dt$Date >= "2007-02-01" & dt$Date < "2007-02-03")
  dt$Global_active_power <- as.numeric(as.character(dt$Global_active_power))
  message("Success!\n")
  
  message("Generating png/plot1.png.")
  png("png/plot1.png", width=480, height=480)
  hist(dt$Global_active_power, breaks=11, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.off()
  message("Success!\n")
}

plot1()