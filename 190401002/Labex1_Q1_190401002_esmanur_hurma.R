#Soru 1.1
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
destfile <- "~/MapsThatChangedOurWorld_StoryMap_Data.csv"

download.file(url,destfile)

maps <- read.csv("~/MapsThatChangedOurWorld_StoryMap_Data.csv",sep=";")

#Soru 1.3
maps$Latitude <- sub(" N", "", maps$Latitude)

#Soru 1.4
idx <- grep("W", maps$Longitude)

#Soru 1.5
maps$Longitude <- gsub("[EW ]", "", maps$Longitude)

#Soru 1.6
maps$Year <- sub(" AD","",maps$Year)

#Soru 1.7
maps$Latitude <- as.numeric(as.character(maps$Latitude))
maps$Longitude <- as.numeric(as.character(maps$Longitude))
maps$Year <- as.numeric(as.character(maps$Year))



