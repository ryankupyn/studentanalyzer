####MAIN####
folderfile <- readline(prompt="Enter the path to the folder that contains the signup csvs")
filelist <- allimport(folderfile)
liststudentdata <- listprocessor(filelist)
processdata()
displaydata()