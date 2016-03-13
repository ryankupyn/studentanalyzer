####LOAD ALL DATA####
allimport <- function(folderfile){
     listfiles <- list.files(path=folderfile, pattern="*", full.names=T, recursive=FALSE)
     print(listfiles)
     loadedfiles = lapply(listfiles, read.csv)
     return(loadedfiles)
}