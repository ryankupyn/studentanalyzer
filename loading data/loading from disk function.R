#####IMPORTING, CONVERTING AND IDENTIFYING A SEMESTER#####
semimport <- function(dataframeinq){
     rootsubmitted <- subset(dataframeinq, dataframeinq$Status == "Submitted")
     rootsubmitted$subchar <- as.character(rootsubmitted$Submission.Date)
     rootsubmitted$subtime <- as.chron(rootsubmitted$subchar,format = "%m/%d/%y %H:%M")
     year <- years(rootsubmitted$subtime[1])
     month <- months(rootsubmitted$subtime[1])
     semester <- "u"
     if(month == "Jan" | "Feb"){
          semester <- "w"
     }
     if(month == "Aug" | "Sep" | "Oct"){
          semester <- "s"
     }
     result <- c(rootsubmitted, year, semester)
     return(result)
}