#####IMPORTING, CONVERTING AND IDENTIFYING A SEMESTER#####
semimport <- function(filepath){
     start <- getwd()
     rootfile <- read.csv(filepath)
     rootsubmitted <- subset(rootfile, rootfile$Status == "Submitted")
     rootsubmitted$subchar <- as.character(rootfile$Submission.Date)
     rootsubmitted$subtime <- as.chron(rootfile$subchar,format = "%m/%d/%y %H:%M")
     result <- list(rootsubmitted, year, semester)
     return(result)
}