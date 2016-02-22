####LOAD ALL DATA####
allimport <- function(folderfile){
     listfiles <- list.files(path=folderfile, pattern="*.csv", full.names=T, recursive=FALSE)
     loadedfiles = lapply(listfiles, read.csv)
     return(loadedfiles)
}