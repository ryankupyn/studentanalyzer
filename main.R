#####MAIN#####

library(xlsx)
library(ggmap)
library(chron)
sprfoursign <- read.csv("/Users/ryankupyn/Dropbox/JEP Data and Analysis/Raw Signup Data/Converted to csv/spring 2014.csv")
fallfoursign <- read.csv("/Users/ryankupyn/Dropbox/JEP Data and Analysis/Raw Signup Data/Converted to csv/fall 2014.csv")
sprfivesign <- read.csv("/Users/ryankupyn/Dropbox/JEP Data and Analysis/Raw Signup Data/Converted to csv/spring 2015.csv")
sprfoursub <- subset(sprfoursign, sprfoursign$Status == "Submitted")
fallfoursub <- subset(fallfoursign, fallfoursign$Status == "Submitted")
sprfivesub <- subset(sprfivesign, sprfivesign$Status == "Submitted")