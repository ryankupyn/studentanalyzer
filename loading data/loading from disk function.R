#####IMPORTING, CONVERTING AND IDENTIFYING A SEMESTER#####
semimport <- function(filepath){
     start <- getwd()
     rootfile <- read.csv(filepath)
     rootsubmitted <- subset(rootfile, rootfile$Status == "Submitted")
     rootsubmitted$subchar <- as.character(rootfile$Submission.Date)
     rootsubmitted$subtime <- as.chron(rootfile$subchar,format = "%m/%d/%y %H:%M")
     year <- years(rootsubmitted$subtime[1])
     month <- months(rootsubmitted$subtime[1])
     if(month == "Jan" | "Feb"){
          semester <- "w"
     }
     if(month == "Aug" | "Sep" | "Oct"){
          semester <- "s"
     }
     result <- list(rootsubmitted, year, semester)
     return(result)
}