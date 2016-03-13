####PROCESSING LIST OF DATAFRAMES####
listprocessor <- function(dflist){
     entrylist <- list()
     for (entry in dflist) {
          c(entrylist, semimport(entry))
     }
     return(entrylist)
}