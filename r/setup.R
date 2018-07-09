setup <- function() {
  message("Checking/Creating data directory.")
  if (!file.exists("data")) dir.create("data")
  message("Success!\n")
  
  if (!file.exists("data/household_power_consumption.txt") & !file.exists("data/power_data.zip")) {
    message("Downloading data.")
    
    source_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    dest_file <- "data/power_data.zip"
    download.file(source_url, destfile = dest_file, method = "curl")
    
    message("Unzipping data.")
    unzip(dest_file, exdir= "data")
  } else if (!file.exists("data/household_power_consumption.txt")) {
    message("Unzipping data.")
    unzip("data/power_data.zip", exdir = "data")
  }
  
  message("Success!\n")
  
  message("Loading the data.table library.")
  require(data.table)
  message("Success!\n")
  
  message("Reading data table.")
  data_tbl <- fread("data/household_power_consumption.txt", sep=";")
  message("Success!\n")
  
  message("Checking/Creating images directory.")
  if (!file.exists("png")) dir.create("png")
  message("Success!\n")
  
  assign("dt", data_tbl, .GlobalEnv)
}

setup()