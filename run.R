run <- function() {
  message("Running r/setup.R")
  source("r/setup.R")
  message("Finished running r/setup.R")
  
  message("Running r/plot1.R")
  source("r/plot1.R")
  message("Finished running r/plot1.R")
  
  message("Running r/plot2.R")
  source("r/plot2.R")
  message("Finished running r/plot2.R")
  
  message("Running r/plot3.R")
  source("r/plot3.R")
  message("Finished running r/plot3.R")
  
  message("Running r/plot4.R")
  source("r/plot4.R")
  message("Finished running r/plot4.R")
}

run()